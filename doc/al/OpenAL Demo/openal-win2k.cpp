// needed to get rid of Linux code so it wouldn't keep getting angry
// and NOT able to find the glut32.lib file.

#include "c:\temp\glut-3.7.6-bin\glut.h"
#include "c:\Program Files\Creative Labs\OpenAL 1.0 SDK\Include\al.h"
#include "c:\Program Files\Creative Labs\OpenAL 1.0 SDK\Include\alu.h"
#include "c:\Program Files\Creative Labs\OpenAL 1.0 SDK\Include\alut.h"
//#include "AL\alut.h"

//#include "d:\projects\c\openal\win\AL\alut.h"


#include <stdio.h>
#include <stdlib.h> // needed to add this so it could see glut32.lib?

#define NUM_BUFFERS 3
#define NUM_SOURCES 3
#define NUM_ENVIRONMENTS 1

ALfloat listenerPos[]={0.0,0.0,4.0};
ALfloat listenerVel[]={0.0,0.0,0.0};
ALfloat	listenerOri[]={0.0,0.0,1.0, 0.0,1.0,0.0};

ALfloat source0Pos[]={ -2.0, 0.0, 0.0};
ALfloat source0Vel[]={ 0.0, 0.0, 0.0};


ALfloat source1Pos[]={ 2.0, 0.0, 0.0};
ALfloat source1Vel[]={ 0.0, 0.0, 0.0};

ALfloat source2Pos[]={ 0.0, 0.0, -4.0};
ALfloat source2Vel[]={ 0.0, 0.0, 0.0};




ALuint	buffer[NUM_BUFFERS];
ALuint	source[NUM_SOURCES];
ALuint  environment[NUM_ENVIRONMENTS];

int GLwin ;

ALsizei size,freq;
ALenum format;
ALvoid *data;
int ch;

/*
#ifdef __linux
static ALboolean alutLoadWAVFile(const char *fname,
			ALsizei *format,
                        ALvoid **wave,
			ALsizei *size,
			ALsizei *freq );

static ALboolean alutUnloadWAV(ALenum format,
			       ALvoid *wave,
			       ALsizei size,
			       ALsizei freq );
#endif
*/

void init(void)
{
	glClearColor(0.0,0.0,0.0,1.0) ;

	alutInit(0, NULL) ;

	alListenerfv(AL_POSITION,listenerPos);
	alListenerfv(AL_VELOCITY,listenerVel);
	alListenerfv(AL_ORIENTATION,listenerOri);

	alGetError(); /* clear error */

	// Generate buffers, or no sound will be produced
	alGenBuffers(NUM_BUFFERS, buffer);
	if(alGetError() != AL_NO_ERROR) {
		printf("- Error creating buffers !!\n");
		exit(1);
	}

	alutLoadWAVFile("c.wav",&format,&data,&size,&freq, 0);
	alBufferData(buffer[0],format,data,size,freq);
	alutUnloadWAV(format,data,size,freq);

	alutLoadWAVFile("b.wav",&format,&data,&size,&freq, 0);
	alBufferData(buffer[1],format,data,size,freq);
	alutUnloadWAV(format,data,size,freq);

	alutLoadWAVFile("a.wav",&format,&data,&size,&freq, 0);
	alBufferData(buffer[2],format,data,size,freq);
	alutUnloadWAV(format,data,size,freq);


	alGetError(); /* clear error */
	alGenSources(NUM_SOURCES, source);

	if(alGetError() != AL_NO_ERROR) {
		printf("- Error creating sources !!\n");
		exit(2);
	}


	alSourcef(source[0],AL_PITCH,1.0f);
	alSourcef(source[0],AL_GAIN,1.0f);
	alSourcefv(source[0],AL_POSITION,source0Pos);
	alSourcefv(source[0],AL_VELOCITY,source0Vel);
	alSourcei(source[0],AL_BUFFER,buffer[0]);
	alSourcei(source[0],AL_LOOPING,AL_TRUE);

	alSourcef(source[1],AL_PITCH,1.0f);
	alSourcef(source[1],AL_GAIN,1.0f);
	alSourcefv(source[1],AL_POSITION,source1Pos);
	alSourcefv(source[1],AL_VELOCITY,source1Vel);
	alSourcei(source[1],AL_BUFFER,buffer[1]);
	alSourcei(source[1],AL_LOOPING,AL_TRUE);

	alSourcef(source[2],AL_PITCH,1.0f);
	alSourcef(source[2],AL_GAIN,1.0f);
	alSourcefv(source[2],AL_POSITION,source2Pos);
	alSourcefv(source[2],AL_VELOCITY,source2Vel);
	alSourcei(source[2],AL_BUFFER,buffer[2]);
	alSourcei(source[2],AL_LOOPING,AL_TRUE);

}

void display(void)
{
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT) ;
glPushMatrix() ;
	glRotatef(20.0,1.0,1.0,0.0) ;

	glPushMatrix() ;
	glTranslatef(source0Pos[0],source0Pos[1],source0Pos[2]) ;
	glColor3f(1.0,0.0,0.0) ;
	glutWireCube(0.5) ;
	glPopMatrix() ;

	glPushMatrix() ;
	glTranslatef(source2Pos[0],source2Pos[1],source2Pos[2]) ;
	glColor3f(0.0,0.0,1.0) ;
	glutWireCube(0.5) ;
	glPopMatrix() ;

	glPushMatrix() ;
	glTranslatef(source1Pos[0],source0Pos[1],source0Pos[2]) ;
	glColor3f(0.0,1.0,0.0) ;
	glutWireCube(0.5) ;
	glPopMatrix() ;

	//the listener
	glPushMatrix() ;
	glTranslatef(listenerPos[0],listenerPos[1],listenerPos[2]) ;
    glColor3f(1.0,1.0,1.0) ;
	glutWireCube(0.5) ;
	glPopMatrix() ;

glPopMatrix() ;
	glutSwapBuffers() ;
}


void reshape(int w, int h) // the reshape function
{
   glViewport(0,0,(GLsizei)w,(GLsizei)h) ;
   glMatrixMode(GL_PROJECTION) ;
   glLoadIdentity() ;
   gluPerspective(60.0,(GLfloat)w/(GLfloat)h,1.0,30.0) ;
   glMatrixMode(GL_MODELVIEW) ;
   glLoadIdentity() ;
   glTranslatef(0.0,0.0,-6.6) ;
}


void keyboard(unsigned char key, int x, int y) 
{
	switch(key)
	{
		case '1':
			alSourcePlay(source[0]);
			break;
		case '2':
			alSourcePlay(source[1]);
			break;
		case '3':
			alSourcePlay(source[2]);
			break;
		case '4':
			alSourceStop(source[0]);
			break;
		case '5':
			alSourceStop(source[1]);
			break;
		case '6':
			alSourceStop(source[2]);
			break;
		case 'a':
		case 'A':
			listenerPos[0] -= 0.1 ;
			alListenerfv(AL_POSITION,listenerPos);

			break ;
		case 's':
		case 'S':
			listenerPos[0] += 0.1 ;
			alListenerfv(AL_POSITION,listenerPos);

			break ;
		case 'q':
		case 'Q':
			listenerPos[2] -= 0.1 ;
			alListenerfv(AL_POSITION,listenerPos);

			break ;
		case 'z':
		case 'Z':
			listenerPos[2] += 0.1 ;
			alListenerfv(AL_POSITION,listenerPos);

			break ;
		default:
			alSourceStop(source[2]);
			alSourceStop(source[1]);
			alSourceStop(source[0]);

			alutExit();
			glutDestroyWindow(GLwin) ;
			exit(0) ;
			break ;
	}
	glutPostRedisplay() ;
}



int main(int argc, char** argv) //finaly the main function
{
	//initialise glut
	glutInit(&argc, argv) ;
	glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB | GLUT_DEPTH) ;   
	glutInitWindowSize(400,400) ;

	//initialise openAL
	alutInit(&argc, argv) ; 

	GLwin = glutCreateWindow("OpenAL & OpenGL | www.dev-gallery.com") ;
	init() ;
	glutDisplayFunc(display) ;
	glutKeyboardFunc(keyboard) ;
	glutReshapeFunc(reshape) ;

	glutMainLoop() ;

	return 0;
}

/*
#ifdef __linux

static ALboolean alutLoadWAVFile(const char *fname,
			ALsizei *format,
                        ALvoid **wave,
			ALsizei *size,
			ALsizei *freq ) {
	ALsizei bits; 

	return alutLoadWAV(fname, wave, format, size, &bits, freq);
}

static ALboolean alutUnloadWAV(ALenum format,
			       ALvoid *wave,
			       ALsizei size,
			       ALsizei freq ) {
	free(wave);

	return AL_TRUE;
}

#endif
*/