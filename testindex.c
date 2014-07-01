typedef struct Component Component;

struct Component {
    int next_index;
    Component* next;
};

#define ARR_SIZE 100000000
Component arr[ARR_SIZE];

int main(void) {
    int index, i;
    for(i = 0; i < ARR_SIZE - 1; i++) {
        arr[i].next_index = i+1;
        arr[i].next = &arr[i+1];
    }
    
    while (index < ARR_SIZE - 1) {
        index = arr[index].next_index;
    }
}
