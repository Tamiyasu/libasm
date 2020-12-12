/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmurakam <tmurakam@student.42tokyo.jp>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/12/13 01:49:14 by tmurakam          #+#    #+#             */
/*   Updated: 2020/12/13 01:49:17 by tmurakam         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "libasm.h"
#include <string.h>

int main()
{
	char *s1 = "test";
	char *s2 = "test";
	char *s3 = "test3";
	char *s4 = "te\xfc";
	char d1[100];
	char d2[100];

	printf("TEST --- ft_strlen vs strlen\n");
	printf("ft_strlen : ret : %0zu\n", ft_strlen(s1));
	printf("   strlen : ret : %0zu\n", strlen(s1));

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
	return (0);
}
