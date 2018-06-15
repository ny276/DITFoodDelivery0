import UIKit

class MyTableViewController: UITableViewController {
    
    // 데이터 클래스 객체 생성
    var foodStores:[FoodStore] = [
        FoodStore(name: "영남관", image: "01", address: "부산광역시 부산진구 양정1동 418-61", tel: "051-864-7426", menu: "", type: "중화요리"),
        FoodStore(name: "왕짜장", image: "02", address: "부산광역시 부산진구 양정1동 356-22", tel: "051-862-2332", menu: "", type: "중화요리"),
        FoodStore(name: "머거스", image: "03", address: "부산광역시 부산진구 양정동 진남로 499-1", tel: "051-868-5224", menu: "", type: ""),
        FoodStore(name: "명동불백", image: "04", address: "양정동 418-214번지 1층 부산진구 부산광역시 KR", tel: "051-867-8581", menu: "", type: ""),
        FoodStore(name: "가야밀면", image: "05", address: "", tel: "051-863-1144", menu: "", type: ""),
        FoodStore(name: "미쳐버린파닭", image: "06", address: "부산광역시 부산진구 양정1동 350-61", tel: "051-851-2688", menu: "", type: ""),
        FoodStore(name: "영진돼지국밥", image: "07", address: "부산광역시 부산진구 양정2동 86-4", tel: "051-861-0798", menu: "", type: ""),
        FoodStore(name: "개미식당", image: "08", address: "", tel: "051-868-8020", menu: "", type: ""),
        ]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "DIT배달통"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return foodStores.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
            as! FoodStoreTableViewCell
        
        cell.foodStoreCellName.text = foodStores[indexPath.row].name
        cell.foodStoreCellImage.image = UIImage(named: foodStores[indexPath.row].image)
        cell.foodStoreCellAddress.text = foodStores[indexPath.row].address
        cell.foodStoreCellTel.text = foodStores[indexPath.row].tel
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
   
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "showDetail" {
            if let indexPath =  tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! DetailViewController

                
                destinationController.name = foodStores[indexPath.row].name
                // 이미지 넘기기
                destinationController.cellImage = foodStores[indexPath.row].image
                destinationController.local1 = foodStores[indexPath.row].address
                destinationController.tel1 = foodStores[indexPath.row].tel
                destinationController.menu = foodStores[indexPath.row].menu
                destinationController.type = foodStores[indexPath.row].type
                
            }
        } else if segue.identifier == "totalMapView" {
            let destinationController = segue.destination as! TotalMapViewController
            destinationController.totalFoodStores = foodStores
     
        }
    }
}

