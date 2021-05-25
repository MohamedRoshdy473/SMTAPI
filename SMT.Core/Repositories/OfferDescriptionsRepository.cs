using Microsoft.EntityFrameworkCore;
using SMT.Data.DTO;
using SMT.Data.Models.SMTDBContext;
using SMT.Domain.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Core.Repositories
{
    public class OfferDescriptionsRepository : IOfferDescriptionsRepository
    {
        private readonly SMTDbContext _context;

        public OfferDescriptionsRepository(SMTDbContext context)
        {
            _context = context;
        }
        public void Add(OfferDescriptionsDTO offerDescriptionsDTO)
        {
            try
            {
                if (offerDescriptionsDTO != null)
                {
                    OfferDescriptions offerDescription = new OfferDescriptions();
                    offerDescription.Description = offerDescriptionsDTO.Description;
                    offerDescription.DescriptionDate = offerDescriptionsDTO.DescriptionDate;
                    offerDescription.OffersId = offerDescriptionsDTO.OffersId;
                    offerDescription.UserId = offerDescriptionsDTO.UserId;
                    _context.Add(offerDescription);
                    _context.SaveChanges();
                }
                else
                {
                    throw new NotCompletedException("Not Completed Exception");
                }
            }
            catch (Exception)
            {
                throw new NotExistException("Not Exist Exception");
            }
        }

        public void Delete(int offerDescriptionsDTOId)
        {
            var offerDescriptions = _context.OfferDescriptions.Find(offerDescriptionsDTOId);

            if (offerDescriptions != null)
            {
                _context.OfferDescriptions.Remove(offerDescriptions);
                _context.SaveChanges();
            }
            else
            {
                throw new NotExistException("Not Exist Exception");
            }
        }

        public OfferDescriptionsDTO Get(int id)
        {
            var offerDescription = _context.OfferDescriptions.Where(o => o.Id == id)
                .Include(o => o.Offers).Include(o => o.Offers.Projects).Include(o => o.User).FirstOrDefault();
            if (offerDescription == null)
            {
                throw new NotExistException("Not Exist Exception");
            }
            else
            {
                var offerDescriptionsDTO = new OfferDescriptionsDTO
                {
                    Id = offerDescription.Id,
                    Description = offerDescription.Description,
                    DescriptionDate = offerDescription.DescriptionDate,
                    ProjectId = offerDescription.Offers.ProjectsId,
                    projectName = offerDescription.Offers.Projects.ProjectName,
                    UserId = offerDescription.UserId,
                    UserName = offerDescription.User.UserName

                };
                return offerDescriptionsDTO;
            }
        }

        public IEnumerable<OfferDescriptionsDTO> GetAll()
        {
            var offerDescriptionDTO = _context.OfferDescriptions.Select(offerDescription =>
                new OfferDescriptionsDTO
                {
                    Id = offerDescription.Id,
                    Description = offerDescription.Description,
                    DescriptionDate = offerDescription.DescriptionDate,
                    ProjectId = offerDescription.Offers.ProjectsId,
                    projectName = offerDescription.Offers.Projects.ProjectName,
                    UserId = offerDescription.UserId,
                    UserName = offerDescription.User.UserName

                }).ToList();
            return offerDescriptionDTO;
        }

        public IEnumerable<OfferDescriptionsDTO> GetAllOfferByProjectUpdateId(int ProjectUpdateId)
        {
            var offerDescriptionDTO = _context.OfferDescriptions.Where(o => o.ProjectUpdateId == ProjectUpdateId).Include(o => o.Offers).Include(o => o.User).Select(offerDescription =>
                    new OfferDescriptionsDTO
                    {
                        Id = offerDescription.Id,
                        Description = offerDescription.Description,
                        DescriptionDate = offerDescription.DescriptionDate,
                        OffersId = offerDescription.OffersId,
                        ProjectCostsId=offerDescription.Offers.ProjectCostsId,
                        Cost=offerDescription.Offers.ProjectCosts.Cost,
                        OfferStatusId=offerDescription.Offers.OfferStatusId,
                        OfferStatusName=offerDescription.Offers.OfferStatus.OfferStatusName,
                        OfferCreationDate=offerDescription.Offers.OfferCreationDate,
                        ProjectId=offerDescription.ProjectUpdate.ProjectId,
                        // this refer to offer name
                        projectName = offerDescription.Offers.Projects.ProjectName,
                        UserId = offerDescription.UserId,
                        UserName = offerDescription.User.UserName

                    }).ToList();
            return offerDescriptionDTO;
        }

        public IEnumerable<OfferDescriptionsDTO> GetAllOfferByUserId(string UserId)
        {
            var offerDescriptionDTO = _context.OfferDescriptions.Where(o => o.UserId == UserId).Include(o => o.Offers).Include(o => o.User).Select(offerDescription =>
                    new OfferDescriptionsDTO
                    {
                        Id = offerDescription.Id,
                        Description = offerDescription.Description,
                        DescriptionDate = offerDescription.DescriptionDate,
                        OffersId = offerDescription.OffersId,
                        // this refer to offer name
                        projectName = offerDescription.Offers.Projects.ProjectName,
                        UserId = offerDescription.UserId,
                        UserName = offerDescription.User.UserName

                    }).ToList();
            return offerDescriptionDTO;
        }

        public void Update(int offerDescriptionsDTOId, OfferDescriptionsDTO offerDescriptionsDTO)
        {
            if (offerDescriptionsDTOId != offerDescriptionsDTO.Id)
            {
                throw new NotExistException("Not Exist Exception");
            }
            OfferDescriptions offerDescription = new OfferDescriptions();
            offerDescription.Description = offerDescriptionsDTO.Description;
            offerDescription.DescriptionDate = offerDescriptionsDTO.DescriptionDate;
            offerDescription.OffersId = offerDescriptionsDTO.OffersId;
            offerDescription.UserId = offerDescriptionsDTO.UserId;
            _context.Entry(offerDescription).State = EntityState.Modified;
            try
            {
                _context.SaveChanges();
            }
            catch (Exception)
            {
                throw new NotCompletedException("Not Completed Exception");
            }
        }
    }
}
