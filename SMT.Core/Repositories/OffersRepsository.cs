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
    public class OffersRepsository : IOffersRepsository
    {
        private readonly SMTDbContext _context;

        public OffersRepsository(SMTDbContext context)
        {
            _context = context;
        }
        public int Add(OffersDTO offersDTO)
        {
            try
            {

                if (offersDTO != null)
                {
                    Offers offer = new Offers();
                    offer.OfferStatusId = offersDTO.OfferStatusId;
                    offer.OfferCreationDate = offersDTO.OfferCreationDate;
                    offer.ProjectsId = offersDTO.ProjectsId;
                    offer.ProjectCostsId = offersDTO.ProjectCostsId;
                    _context.Add(offer);
                    _context.SaveChanges();
                    offersDTO.Id = offer.Id;
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
            return offersDTO.Id;
        }

        public void Delete(int offersDTOId)
        {
            var offer = _context.Offers.Find(offersDTOId);

            if (offer != null)
            {
                _context.Offers.Remove(offer);
                _context.SaveChanges();
            }
            else
            {
                throw new NotExistException("Not Exist Exception");

            }
        }

        public OffersDTO Get(int id)
        {
            var offer = _context.Offers.Where(o => o.Id == id).Include(o => o.Projects).Include(o => o.OfferStatus).Include(o => o.ProjectCosts).FirstOrDefault();
            if (offer == null)
            {
                throw new NotExistException("Not Exist Exception");
            }
            else
            {
                var offersDTO = new OffersDTO
                {
                    Id = offer.Id,
                    ProjectsId = offer.ProjectsId,
                    ProjectName = offer.Projects.ProjectName,
                    ProjectCostsId = offer.ProjectCostsId,
                    Cost = offer.ProjectCosts.Cost,
                    OfferCreationDate = offer.OfferCreationDate,
                    OfferStatusId = offer.OfferStatusId,
                    OfferStatusName = offer.OfferStatus.OfferStatusName,
                };
                return offersDTO;
            }
        }

        public IEnumerable<OffersDTO> GetAll()
        {
            var offerDTO = _context.Offers.Select(offer =>
                new OffersDTO
                {
                    Id = offer.Id,
                    ProjectsId = offer.ProjectsId,
                    ProjectName = offer.Projects.ProjectName,
                    ProjectCostsId = offer.ProjectCostsId,
                    Cost = offer.ProjectCosts.Cost,
                    OfferCreationDate = offer.OfferCreationDate,
                    OfferStatusId = offer.OfferStatusId,
                    OfferStatusName = offer.OfferStatus.OfferStatusName,
                }).ToList();
            return offerDTO;
        }
    
        public void Update(int offersDTOId, OffersDTO offersDTO)
        {
            if (offersDTOId != offersDTO.Id)
            {
                throw new NotExistException("Not Exist Exception");
            }
            Offers offer = new Offers();
            offer.Id = offersDTO.Id;
            offer.OfferStatusId = offersDTO.OfferStatusId;
            offer.OfferCreationDate = offersDTO.OfferCreationDate;
            offer.ProjectsId = offersDTO.ProjectsId;
            offer.ProjectCostsId = offersDTO.ProjectCostsId;
            _context.Entry(offer).State = EntityState.Modified;
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
