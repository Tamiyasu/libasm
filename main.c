/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmurakam <tmurakam@student.42tokyo.jp>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/12/13 01:49:14 by tmurakam          #+#    #+#             */
/*   Updated: 2020/12/14 17:48:48 by tmurakam         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "libasm.h"
#include <string.h>
#include <unistd.h>

#define L 1024
int main()
{
	char *s1 = "test";
	char *s2 = "test";
	char *s3 = "test3";
	char *s4 = "te\x80";
	char *s5 = "te\xfc";
	char d1[100];
	char d2[100];
	char *d;
	char longs[L];
	char longd[L];
	
	memset(longs, 0, L);
	memset(longs, 'A', L - 1);
	memset(longd, 0, L);

	printf("TEST --- ft_strlen vs strlen\n");
	printf("ft_strlen : ret : %0zu\n", ft_strlen(s1));
	printf("   strlen : ret : %0zu\n", strlen(s1));
	printf("ft_strlen : ret : %0zu\n", ft_strlen(longs));
	printf("   strlen : ret : %0zu\n", strlen(longs));
	printf("ft_strlen : ret : %0zu\n", ft_strlen(longd));
	printf("   strlen : ret : %0zu\n", strlen(longd));
	//printf("ft_strlen : ret : %0zu\n", ft_strlen(NULL));
	//printf("   strlen : ret : %0zu\n", strlen(NULL));

	printf("\nTEST --- ft_strcpy vs strcpy\n");
	printf("ft_strcpy : ret : %p [%s]\n", ft_strcpy(d1, s1), d1);
	printf("   strcpy : ret : %p [%s]\n",    strcpy(d2, s1), d2);
	printf("ft_strcpy : ret : %p [%s]\n", ft_strcpy(d2, s2), d2);
	printf("   strcpy : ret : %p [%s]\n",    strcpy(d1, s2), d1);
	printf("ft_strcpy : ret : %p [%s]\n", ft_strcpy(d1, s3), d1);
	printf("   strcpy : ret : %p [%s]\n",    strcpy(d2, s3), d2);
	printf("ft_strcpy : ret : %p [%s]\n", ft_strcpy(d2, s4), d2);
	printf("   strcpy : ret : %p [%s]\n",    strcpy(d1, s4), d2);

	printf("\nTEST --- ft_strcmp vs strcmp\n");
	printf("ft_strcmp : ret : %0d\n", ft_strcmp(s1, s2));
	printf("   strcmp : ret : %0d\n", strcmp(s1, s2));
	printf("ft_strcmp : ret : %0d\n", ft_strcmp(s1, s3));
	printf("   strcmp : ret : %0d\n", strcmp(s1, s3));
	printf("ft_strcmp : ret : %0d\n", ft_strcmp(s1, s4));
	printf("   strcmp : ret : %0d\n", strcmp(s1, s4));
	printf("ft_strcmp : ret : %0d\n", ft_strcmp(s4, s1));
	printf("   strcmp : ret : %0d\n", strcmp(s4, s1));
	printf("ft_strcmp : ret : %0d\n", ft_strcmp(s1, s5));
	printf("   strcmp : ret : %0d\n", strcmp(s1, s5));
	printf("ft_strcmp : ret : %0d\n", ft_strcmp(s5, s1));
	printf("   strcmp : ret : %0d\n", strcmp(s5, s1));

	printf("\nTEST --- ft_write vs write\n");
	perror("before   - ");
	printf("ft_write : ret : %zd\n", ft_write(0, s1, ft_strlen(s1)));
	perror("ft_write - ");
	printf("   write : ret : %zd\n",    write(0, s1, ft_strlen(s1)));
	perror("   write - ");
	printf("ft_write : ret : %zd\n", ft_write(1, s1, ft_strlen(s1)));
	perror("ft_write - ");
	printf("   write : ret : %zd\n",    write(1, s1, ft_strlen(s1)));
	perror("   write - ");
	printf("ft_write : ret : %zd\n", ft_write(2, s1, ft_strlen(s1)));
	perror("ft_write - ");
	printf("   write : ret : %zd\n",    write(2, s1, ft_strlen(s1)));
	perror("   write - ");
	printf("ft_write : ret : %zd\n", ft_write(3, s1, ft_strlen(s1)));
	perror("ft_write - ");
	printf("   write : ret : %zd\n",    write(3, s1, ft_strlen(s1)));
	perror("   write - ");

	printf("\nTEST --- ft_read vs read\n");
	perror("before   - ");
	printf("ft_read : ret : %zd\n", ft_read(0, d1, ft_strlen(s1)));
	perror("ft_read - ");
	printf("   read : ret : %zd\n",    read(0, d2, ft_strlen(s1)));
	perror("   read - ");
	printf("ft_read : ret : %zd\n", ft_read(1, d1, ft_strlen(s1)));
	perror("ft_read - ");
	printf("   read : ret : %zd\n",    read(1, d2, ft_strlen(s1)));
	perror("   read - ");
	printf("ft_read : ret : %zd\n", ft_read(2, d1, ft_strlen(s1)));
	perror("ft_read - ");
	printf("   read : ret : %zd\n",    read(2, d2, ft_strlen(s1)));
	perror("   read - ");
	printf("ft_read : ret : %zd\n", ft_read(3, d1, ft_strlen(s1)));
	perror("ft_read - ");
	printf("   read : ret : %zd\n",    read(3, d2, ft_strlen(s1)));
	perror("   read - ");

	printf("\nTEST --- ft_strdup vs strdup\n");
	printf("ft_strdup : ret : %zd : [%s]\n", d = ft_strdup(s1), d);
	free(d);
	printf("   strdup : ret : %zd : [%s]\n", d =    strdup(s1), d);
	free(d);
	printf("ft_strdup : ret : %zd : (%zu)\n", d = ft_strdup(longs), strcmp(d, longs));
	free(d);
	printf("   strdup : ret : %zd : (%zu)\n", d =    strdup(longs), strcmp(d, longs));
	free(d);	
	
	return (0);
}
