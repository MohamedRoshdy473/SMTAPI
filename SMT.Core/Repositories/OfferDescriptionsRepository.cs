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
                    if (offerDescriptionsDTO.ProjectUpdateId == 0)
                    {
                        offerDescriptionsDTO.ProjectUpdateId = null;
                    }
                    OfferDescriptions offerDescription = new OfferDescriptions();
                    offerDescription.Description = offerDescriptionsDTO.Description;
                    offerDescription.ProjectUpdateId = offerDescriptionsDTO.ProjectUpdateId;
                    offerDescription.ProjectId = offerDescriptionsDTO.ProjectId;
                    offerDescription.DescriptionDate = DateTime.Now; //offerDescriptionsDTO.DescriptionDate;
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
                    ProjectId = offerDescription.ProjectId,
                    projectName = offerDescription.projects.ProjectName,
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
                    ProjectId = offerDescription.ProjectId,
                    projectName = offerDescription.projects.ProjectName,
                    UserId = offerDescription.UserId,
                    UserName = offerDescription.User.UserName

                }).OrderByDescending(p => p.Id).ToList();
            return offerDescriptionDTO;
        }

        public IEnumerable<OfferDescriptionsDTO> GetAllOfferByProjectUpdateId(int ProjectId,int ProjectUpdateId)
        {
            List<OfferDescriptionsDTO> offerDescriptionDTO = new List<OfferDescriptionsDTO>();
            if (ProjectUpdateId != 0)
            {
                 offerDescriptionDTO = _context.OfferDescriptions.Where(o => o.ProjectUpdateId == ProjectUpdateId).Include(o => o.Offers).Include(o => o.User).Select(offerDescription =>
                    new OfferDescriptionsDTO
                    {
                        Id = offerDescription.Id,
                        Description = offerDescription.Description,
                        DescriptionDate = offerDescription.DescriptionDate,
                        OffersId = offerDescription.OffersId,
                        ProjectCostsId = offerDescription.Offers.ProjectCostsId,
                        Cost = offerDescription.Offers.ProjectCosts.Cost,
                        OfferStatusId = offerDescription.Offers.OfferStatusId,
                        OfferStatusName = offerDescription.Offers.OfferStatus.OfferStatusName,
                        OfferCreationDate = offerDescription.Offers.OfferCreationDate,
                        ProjectId = offerDescription.ProjectId,
                        // this refer to offer name
                        projectName = offerDescription.projects.ProjectName,
                        UserId = offerDescription.UserId,
                        UserName = offerDescription.User.UserName
                    
                    }).OrderByDescending(p => p.Id).ToList();
                return offerDescriptionDTO;
            }
            else
            {
             offerDescriptionDTO = _context.OfferDescriptions.Where(o => o.ProjectId == ProjectId && o.ProjectUpdateId==null).Include(o => o.Offers).Include(o => o.User).Select(offerDescription =>
                    new OfferDescriptionsDTO
                    {
                        Id = offerDescription.Id,
                        Description = offerDescription.Description,
                        DescriptionDate = offerDescription.DescriptionDate,
                        OffersId = offerDescription.OffersId,
                        ProjectCostsId = offerDescription.Offers.ProjectCostsId,
                        Cost = offerDescription.Offers.ProjectCosts.Cost,
                        OfferStatusId = offerDescription.Offers.OfferStatusId,
                        OfferStatusName = offerDescription.Offers.OfferStatus.OfferStatusName,
                        OfferCreationDate = offerDescription.Offers.OfferCreationDate,
                        ProjectId = offerDescription.ProjectId,
                        // this refer to offer name
                        projectName = offerDescription.projects.ProjectName,
                        UserId = offerDescription.UserId,
                        UserName = offerDescription.User.UserName

                    }).OrderByDescending(p => p.Id).ToList();
            }

            return offerDescriptionDTO;
        }

        public IEnumerable<OfferDescriptionsDTO> GetAllOfferByProjectUpdateIdAndUserId(int ProjectId, int ProjectUpdateId)
        {
            List<OfferDescriptionsDTO> offerDescriptionDTO = new List<OfferDescriptionsDTO>();
            if (ProjectUpdateId != 0)
            {
                offerDescriptionDTO = _context.OfferDescriptions.Where(o => o.ProjectUpdateId == ProjectUpdateId && o.Offers.OfferStatus.OfferStatusName == "Offered").Include(o => o.Offers).Include(o => o.User).Select(offerDescription =>
                   new OfferDescriptionsDTO
                   {
                       Id = offerDescription.Id,
                       Description = offerDescription.Description,
                       DescriptionDate = offerDescription.DescriptionDate,
                       OffersId = offerDescription.OffersId,
                       ProjectCostsId = offerDescription.Offers.ProjectCostsId,
                       Cost = offerDescription.Offers.ProjectCosts.Cost,
                       OfferStatusId = offerDescription.Offers.OfferStatusId,
                       OfferStatusName = offerDescription.Offers.OfferStatus.OfferStatusName,
                       OfferCreationDate = offerDescription.Offers.OfferCreationDate,
                       ProjectId = offerDescription.ProjectId,
                        // this refer to offer name
                        projectName = offerDescription.projects.ProjectName,
                       UserId = offerDescription.UserId,
                       UserName = offerDescription.User.UserName

                   }).OrderByDescending(p => p.Id).ToList();
                return offerDescriptionDTO;
            }
            else
            {
                offerDescriptionDTO = _context.OfferDescriptions.Where(o => o.ProjectId == ProjectId && o.ProjectUpdateId == null && o.Offers.OfferStatus.OfferStatusName == "Offered").Include(o => o.Offers).Include(o => o.User).Select(offerDescription =>
                         new OfferDescriptionsDTO
                         {
                             Id = offerDescription.Id,
                             Description = offerDescription.Description,
                             DescriptionDate = offerDescription.DescriptionDate,
                             OffersId = offerDescription.OffersId,
                             ProjectCostsId = offerDescription.Offers.ProjectCostsId,
                             Cost = offerDescription.Offers.ProjectCosts.Cost,
                             OfferStatusId = offerDescription.Offers.OfferStatusId,
                             OfferStatusName = offerDescription.Offers.OfferStatus.OfferStatusName,
                             OfferCreationDate = offerDescription.Offers.OfferCreationDate,
                             ProjectId = offerDescription.ProjectId,
                        // this refer to offer name
                        projectName = offerDescription.projects.ProjectName,
                             UserId = offerDescription.UserId,
                             UserName = offerDescription.User.UserName

                         }).OrderByDescending(p => p.Id).ToList();
            }

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
                        projectName = offerDescription.projects.ProjectName,
                        UserId = offerDescription.UserId,
                        UserName = offerDescription.User.UserName

                    }).OrderByDescending(p => p.Id).ToList();
            return offerDescriptionDTO;
        }

        public IEnumerable<OfferDescriptionsDTO> GetAllOfferOfferedByUserId(string UserId)
        {
            List<OfferDescriptionsDTO> OfferDescriptionsOffered = new List<OfferDescriptionsDTO>();
            List<ProjectUpdateDTO> updates = new List<ProjectUpdateDTO>();
            var projects = _context.ProjectDescriptions.Where(d => d.UserId == UserId && d.ProjectUpdateId == null)
                    .Select(projDesc => new ProjectDescriptionsDTO
                    {
                        Id = projDesc.Id,
                        ProjectId = projDesc.ProjectId,
                        UserId = projDesc.UserId,
                        ProjectUpdateId = projDesc.ProjectUpdateId,
                        UserName = projDesc.User.UserName,
                    }).ToList();
            foreach (var item in projects)
            {
                var offerDescriptionDTO = _context.OfferDescriptions.Where(o => o.ProjectId == item.ProjectId && o.ProjectUpdateId==null
                && o.Offers.OfferStatus.OfferStatusName == "Offered").Include(o => o.Offers).Include(o => o.User).Select(offerDescription =>
                          new OfferDescriptionsDTO
                          {
                              Id = offerDescription.Id,
                              Description = offerDescription.Description,
                              DescriptionDate = offerDescription.DescriptionDate,
                              OffersId = offerDescription.OffersId,
                              OfferStatusName = offerDescription.Offers.OfferStatus.OfferStatusName,
                              // this refer to offer name
                              projectName = offerDescription.Offers.Projects.ProjectName,
                              UserId = offerDescription.UserId,
                              UserName = offerDescription.User.UserName
                          }).Distinct().FirstOrDefault();
                OfferDescriptionsOffered.Add(offerDescriptionDTO);
            }
            foreach (var item in projects)
            {

                var projectUpdates = _context.projectUpdates.Where(e => e.ProjectId == item.ProjectId).Select(proUpdates => new ProjectUpdateDTO
                {
                    Id = proUpdates.Id,
                    ProjectId = proUpdates.ProjectId,
                    DueDate = proUpdates.DueDate,
                    ProjectName = proUpdates.projects.ProjectName
                }).OrderByDescending(p => p.Id).ToList();
                foreach (var item2 in projectUpdates)
                {
                    updates.Add(item2);
                }
            }

            foreach (var item in updates)
            {
                var offerDescriptionDTO = _context.OfferDescriptions.Include(o => o.Offers.OfferStatus)
                  .Where(o => o.ProjectUpdateId == item.Id && o.Offers.OfferStatus.OfferStatusName == "Offered").Include(o => o.Offers).Include(o => o.User).Select(offerDescription =>
                      new OfferDescriptionsDTO
                    {
                        Id = offerDescription.Id,
                        Description = offerDescription.Description,
                        DescriptionDate = offerDescription.DescriptionDate,
                        OffersId = offerDescription.OffersId,
                        OfferStatusName = offerDescription.Offers.OfferStatus.OfferStatusName,
                      // this refer to offer name
                      projectName = offerDescription.Offers.Projects.ProjectName,
                        UserId = offerDescription.UserId,
                        UserName = offerDescription.User.UserName
                    }).FirstOrDefault();
                OfferDescriptionsOffered.Add(offerDescriptionDTO);
            }
            OfferDescriptionsOffered.RemoveAll(item => item == null);
            return OfferDescriptionsOffered.Distinct().OrderByDescending(p => p.Id);
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
            offerDescription.ProjectId = offerDescriptionsDTO.ProjectId;
            offerDescription.ProjectUpdateId = offerDescriptionsDTO.ProjectUpdateId;
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
