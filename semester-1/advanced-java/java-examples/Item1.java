public class Item1   {

private String description;

                public String getDescription()     {

                                return description;

                }

                public void setDescription(String description) {

                                this.description = description;

                }

                public static void modifyDesc(Item1 item,String desc)   {

                                item=new Item1();

                                item.setDescription(desc);

                }

                public static void main(String[] args)        {

                                Item1 it=new Item1();

                                it.setDescription("Gobstopper");

                                Item1 it2=new Item1();

                                it2.setDescription("Fizzylifting");

                                Item1.modifyDesc(it,"Scrumdiddlyumptious");

                                System.out.println(it.getDescription());

                                System.out.println(it2.getDescription());

                }             

}