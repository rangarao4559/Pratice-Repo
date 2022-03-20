public class CollectionExample {

    public void printList() {

        List<Integer> li = new List<Integer>();

        

        li.add(1);

        li.add(5);

        li.add(3);

        li.add(1);

        li.add(2);

        li.add(4);

        li.add(6);

        li.add(4);

        li.add(8);

        li.add(7);
        
        System.debug('========================List li:'+li);

        // ========================List li:(1, 5, 3, 1, 2, 4, 6, 4, 8, 7)

        

        for(Integer val: li) {

            System.debug('---------------------Value: '+val);

        }

    }

}