#include <pthread.h>
#include <stdio.h>
#include <unistd.h>
#include <stddef.h>
#include <SDL2/SDL.h>

void *run(void* param)
{
  while (1) {
    sleep(1);
    printf("bbb");
  }

}
int main (void)
{
  pthread_t _thread;

  SDL_Init();
  
  pthread_create(&_thread,NULL,run,NULL);
  pthread_join(_thread, NULL);
  return 0 ;
}

