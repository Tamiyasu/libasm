#ifndef LIBASM_H
# define LIBASM_H

size_t	ft_read(int fd, void *buf, size_t count);
char	*ft_strcpy(char *dest, const char *src);
int		ft_strcmp(const char *s1, const char *s2);
char*	ft_strdup(const char *s);
size_t	ft_strlen(const char *str);
size_t	ft_write(int fd, const void *buff, size_t count);

#endif
