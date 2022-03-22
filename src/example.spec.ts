const addNumbers = (num1, num2) => {
  return num1 + num2;
};

describe('addNumbers', () => {
  it('should return sum of num1 plus num2', () => {
    expect(addNumbers(2, 2)).toEqual(4);
  });
});
