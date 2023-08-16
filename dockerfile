# Chọn hình ảnh cơ sở với Node.js
FROM node:14

# Đặt thư mục làm thư mục làm việc mặc định trong container
WORKDIR /usr/src/app

# Sao chép tệp package.json và package-lock.json (nếu có) vào thư mục làm việc
COPY package*.json ./

# Cài đặt các phụ thuộc
RUN npm install

# Sao chép các tệp từ thư mục src vào thư mục làm việc trong container
COPY ./src ./src

# Sao chép các tệp từ thư mục public vào thư mục làm việc trong container
COPY ./public ./public

# Mở cổng mạng
EXPOSE 3000

# Lệnh chạy khi khởi động container
CMD ["npm", "start"]

