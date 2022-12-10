STEP PENGERJAAN TEST-DEVOPS

Yang dibutuhkan antara lain :

- Menggunakan public cloud aws
- Menggunakan satu ec2  : ( "os : ubuntu 18.04" "flavor : t2.large 2 cpu Ram 8 gb"
-  Terraform dengan version v0.11.15

1. Membuat file main.tf yang isinya adalah untuk melakukan provisioning membuat ec2 dan configurasi node.js yang akan di tuujukan pada file variable .tf

<img width="866" alt="image" src="https://user-images.githubusercontent.com/75195337/206864203-d21b2f52-7217-4fd2-ad6d-32333ed96dd6.png">

2. Membuat file variable.tf untuk melakukan variable terraform dari file mai.tf

<img width="415" alt="image" src="https://user-images.githubusercontent.com/75195337/206864290-492e99f6-1cf5-4e84-bec3-cd35b3da0bc3.png">

3. Membuat script untuk melakukan configurasi web server pada nginx dan node js
<img width="770" alt="image" src="https://user-images.githubusercontent.com/75195337/206864302-740b4a2b-8677-4b91-82b1-3751b91a813f.png">
<img width="613" alt="image" src="https://user-images.githubusercontent.com/75195337/206864317-790da1a8-d03a-4668-8d5a-f9a238fdbda3.png">
<img width="956" alt="image" src="https://user-images.githubusercontent.com/75195337/206864330-ffe785ed-56a9-478f-810b-71827ea805e1.png">
<img width="957" alt="image" src="https://user-images.githubusercontent.com/75195337/206864347-d87224c7-4c4f-490f-b72e-6440f62e56ca.png">
<img width="426" alt="image" src="https://user-images.githubusercontent.com/75195337/206866576-270008ca-e899-45b4-9c00-c0b2d3dd0b57.png">

4. Install terraform v0.11.15 , disini saya menggunakan versi itu karena setelah saya coba beberapa versi tidak stabil
```
wget https://releases.hashicorp.com/terraform/0.11.15/terraform_0.11.15_linux_amd64.zip
```
```
unzip terraform_0.11.15_linux_amd64.zip
```
```
terraform -v
```
![image](https://user-images.githubusercontent.com/75195337/206866657-91a7ba36-453f-4d99-a328-6e481092e52c.png)

5. selanjutnya melakukan initialize 
```
terraform init
```
![image](https://user-images.githubusercontent.com/75195337/206866705-1cba48ab-ee06-44c5-bbe1-9b79489ff659.png)

6. selanjutnya melakukan mensimulasikan infrastruktur
```
terraform plan
```
![image](https://user-images.githubusercontent.com/75195337/206866724-136bea46-b837-4808-bfc7-3676fe678297.png)

7. melakukan membangun insfrastruktur ke aws
```
terraform apply
```

![image](https://user-images.githubusercontent.com/75195337/206866739-33c63ba5-c52b-4a45-b35c-86d8661f4704.png)

 result Done apply
![image](https://user-images.githubusercontent.com/75195337/206866761-0564a757-3b0d-4880-ad68-346ad78f8f18.png)

8. cek hasil dari apply terraform tadi
```
terraform show
```
![image](https://user-images.githubusercontent.com/75195337/206866795-1f2a86f2-c0d2-49f6-8752-875e7cc014ef.png)

9. melakukan terminated atau menghapus infrastruktur

```
terraform destroy
```
![image](https://user-images.githubusercontent.com/75195337/206866836-6abb8384-af3a-4568-85ba-6268108f4b7b.png)

10. setelah itu ssh instance yang telah dibuat 
```
ssh ec2-user@ip -i <key>
```
![image](https://user-images.githubusercontent.com/75195337/206866871-abf84c3f-2d32-46fa-b3b2-d710e6f5fd9d.png)

11. melakukan pengecekan dengnan menggunakan curl dan berhasil 
```
curl localhost 8000
```
![Uploading image.png…]

12. mencoba akses melalui tampilan web berhasil

![image](https://user-images.githubusercontent.com/75195337/206863831-c3414cee-f6af-40fa-9502-abf47da9bed1.png)
