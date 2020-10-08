// Run at https://tio.run/#reason
// cerner_2^5_2020
let get_engineering_productivity=(~effort,~size)=>{
 print_endline("Let effort required to complete a project is "++ effort);
 print_endline("Let size of the project delivered is "++ size);
 print_endline("Engineering Productivity is "++effort ++"\\"++ size  );
}
get_engineering_productivity("X","Y")