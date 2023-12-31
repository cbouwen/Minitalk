/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   client.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cbouwen <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/06 17:42:43 by cbouwen           #+#    #+#             */
/*   Updated: 2023/09/15 13:18:42 by cbouwen          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minitalk.h"

void	handler(pid_t pid, char c)
{
	int	bit;

	bit = 0;
	while (bit < 8)
	{
		if ((c & (0x01 << bit)))
			kill(pid, SIGUSR1);
		else
			kill(pid, SIGUSR2);
		usleep(500);
		bit++;
	}
}

int	main(int argc, char **argv)
{
	long	pid;
	int		i;

	i = 0;
	if (argc != 3)
		ft_printf("Error\n");
	else
	{
		pid = ft_atol(argv[1]);
		while (argv[2][i] != '\0')
		{
			handler((pid_t)pid, argv[2][i]);
			i++;
		}
	}
}
