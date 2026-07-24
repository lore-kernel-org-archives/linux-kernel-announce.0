Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F2743304B
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:20:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784902858; cv=none; b=jX7ME8q9D4hwhKtoJofTbm6Ab40FDjbqNdxqBpbd6Oy2MH2J/4Io7KkQKZQG/WWVxsZRHW11EXnUDCqX8fDNCXDctgHw0xDwp3vmD4NMA+eV+aDkeih3dTjiIxvncmgIjBZgmTYHoRSMl0wuYZyCieka/0qctXGG5IbNvTdJ3y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784902858; c=relaxed/simple;
	bh=Q4Pe6dL0zYxNul/tVJbQ+R39SbloVEFO7ydfFElt0cs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=KKiwEef/oe92VUErTaxfjxjHWcWIdCezwQkwHxMY3444RkWCsAooLqcZdklliIMI6+KZhGXl8TpnRMxzYr7RStT95iw5OTDoUJKQO9zhWdn2VOWzCXbg22Id027jXISqIPoQyP39agdE5M6aXAeCZWGbV+7AEK2qSU7k6wpA0w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1784902858;
	bh=Q4Pe6dL0zYxNul/tVJbQ+R39SbloVEFO7ydfFElt0cs=;
	h=Subject:From:To:Date:From;
	b=mlOfpBmo4ewAAOsT5rT1eIKtaO0d2OZQ8NAAjmJc5gsCdjLB4lu2FgFTC5d7T7G6e
	 4Kyt/dvBj8YdJfmu/ISJDiQlSr1PsgAyN6jhpCjnWkGXLWV2ryKvsv5Ai4JH6etlfZ
	 7J74Vx0cmOIPY8wWYHcKLOmEWV7cnkAzL6paGxnE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C29961F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:20:56 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 5969E3926275
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:20:25 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.145 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 24 Jul 2026 14:20:23 +0000
Message-Id: <20260724142023.release-6.6.145@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.145
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.145.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.145.xz

Linux kernel version 6.6.145 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.145.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.145.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.145.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.145/v6.6.144

