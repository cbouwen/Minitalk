/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   minitalk.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cbouwen <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/06 17:58:22 by cbouwen           #+#    #+#             */
/*   Updated: 2023/09/12 16:08:31 by cbouwen          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MINITALK_H
# define MINITALK_H

# include "Libft/libft.h"
# include "Printf/ft_printf.h"

# include <signal.h>
# include <unistd.h>

void	handle_sigusr(int signum);
void	handler(pid_t pid, char c);

#endif
