# Dùng Node.js LTS
FROM node:18-alpine

# Tạo thư mục ứng dụng
WORKDIR /usr/src/app

# Cài dependencies
COPY package*.json ./
RUN npm install

# Copy toàn bộ mã nguồn
COPY . .

# Build ứng dụng (nếu chạy production)
RUN npm run build

# App NestJS chạy ở cổng 3000
EXPOSE 3000

# Lệnh mặc định
CMD ["npm", "run", "start:prod"]
