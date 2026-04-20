-- Lấy danh sách tài xế thỏa điều kiện nhận đơn
SELECT *
FROM Drivers
-- Chỉ lấy tài xế đang hoạt động
WHERE status = 'AVAILABLE'
-- Lọc theo điểm tín nhiệm tối thiểu
  AND trust_score >= 80
-- Ưu tiên gần nhất, nếu bằng khoảng cách thì ưu tiên điểm cao hơn
ORDER BY distance_km ASC, trust_score DESC;