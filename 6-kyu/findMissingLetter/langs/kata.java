public class Kata {
    public static char findMissingLetter(char[] array) {
        int start = array[0];
        for (int i = 1; i < array.length; i++) {
            start++;
            if (array[i] != start) {
                return (char) start;
            }
        }
        return ' ';
    }
}
