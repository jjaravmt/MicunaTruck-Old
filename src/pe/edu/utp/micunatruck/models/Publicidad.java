package pe.edu.utp.micunatruck.models;
import java.util.Date;

    public class Publicidad {
        private int id;
        private int admin_id;
        private String name;
        private String description;
        private String image;
        private double price;
        private Date start_date;
        private Date end_date;
        private boolean flagActive;
        private Date deletedAt = new Date();
        private Date updatedAt = new Date();
        private Date createdAt = new Date();


        public Publicidad() {

        }

        public Publicidad(int id, int admin_id, String name, String description,
                          String image, double price, Date start_date, Date end_date,
                          boolean flagActive, Date deletedAt, Date updatedAt, Date createdAt) {
            this.setId(id);
            this.setAdmin_id(admin_id);
            this.setName(name);
            this.setDescription(description);
            this.setImage(image);
            this.setPrice(price);
            this.setStart_date(start_date);
            this.setEnd_date(end_date);
            this.setFlagActive(flagActive);
            this.setDeletedAt(deletedAt);
            this.setUpdatedAt(updatedAt);
            this.setCreatedAt(createdAt);
        }


        public int getId() {
            return id;
        }

        public Publicidad setId(int id) {
            this.id = id;
            return this;
        }

        public int getAdmin_id() {
            return admin_id;
        }

        public Publicidad setAdmin_id(int admin_id) {
            this.admin_id = admin_id;
            return this;
        }

        public String getName() {
            return name;
        }

        public Publicidad setName(String name) {
            this.name = name;
            return this;
        }

        public String getDescription() {
            return description;
        }

        public Publicidad setDescription(String description) {
            this.description = description;
            return this;
        }

        public String getImage() {
            return image;
        }

        public Publicidad setImage(String image) {
            this.image = image;
            return this;
        }

        public double getPrice() {
            return price;
        }

        public Publicidad setPrice(double price) {
            this.price = price;
            return this;
        }

        public Date getStart_date() {
            return start_date;
        }

        public Publicidad setStart_date(Date start_date) {
            this.start_date = start_date;
            return this;
        }

        public Date getEnd_date() {
            return end_date;
        }

        public Publicidad setEnd_date(Date end_date) {
            this.end_date = end_date;
            return this;
        }

        public boolean isFlagActive() {
            return flagActive;
        }

        public Publicidad setFlagActive(boolean flagActive) {
            this.flagActive = flagActive;
            return this;
        }

        public Date getDeletedAt() {
            return deletedAt;
        }

        public Publicidad setDeletedAt(Date deletedAt) {
            this.deletedAt = deletedAt;
            return this;
        }

        public Date getUpdatedAt() {
            return updatedAt;
        }

        public Publicidad setUpdatedAt(Date updatedAt) {
            this.updatedAt = updatedAt;
            return this;
        }

        public Date getCreatedAt() {
            return createdAt;
        }

        public Publicidad setCreatedAt(Date createdAt) {
            this.createdAt = createdAt;
            return this;
        }
    }




