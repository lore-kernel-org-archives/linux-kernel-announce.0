Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B14B2EDD58
	for <linux-kernel-announce@vger.kernel.org>; Wed, 19 Aug 2026 15:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787153888; cv=none; b=cUBzPNwoLPDGM2DXGgYSdSAdYBvZK3es8/4p6KJHCsVUpbA5HDXP1U1GnDFKccpMEhBETbS7vau5rWsU+OpdRlAZ4WybDw1m5GFh4sxffC0B3O7Eh5xdCznwaaAXTE2EtL9k0Ls9ZZ/qI3lwwgu9DMskiWYZ9mtq2YYhuJEYQ+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787153888; c=relaxed/simple;
	bh=BdYsD94hp3qjJai1Nt1TIXiu3J/t1IyWoeCBmuR0NdM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=cnMV5oA6C/0YmabmfVcj5bzkEPB/+sfVT9db5w87e1tmXRF0RW7rx/F1o6Ogu2jLkV2gEIjsLCg8PJ3yk7fcRvnYV7nXOvlt86H67dSB8M54zsjErhmj69O49V1mghhnE3mlo7Od9v1iNkWLp9ZLxuT+fQOAkZDaY2/uEwCFSH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787153888;
	bh=BdYsD94hp3qjJai1Nt1TIXiu3J/t1IyWoeCBmuR0NdM=;
	h=Subject:From:To:Date:From;
	b=sCQ7LUxXSm7rdxzVtj4zP9drJuC59DMD9OuMH9q7OC7TYIqskUGXEVmPOxvr7+LUW
	 C4Gd5x2FoUbX8pQGk6myzXD4+Wz7JdGJP62tKEa1xDLrAmUUbftg+gr5Xxg2CR2l0n
	 5wHMF8jhXdDypdvtzv8nvRCpxzKfC9dyJjqOcyIg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3069A1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Wed, 19 Aug 2026 15:38:07 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 5934738119E0
	for <linux-kernel-announce@vger.kernel.org>; Wed, 19 Aug 2026 15:37:19 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.183 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 19 Aug 2026 15:37:17 +0000
Message-Id: <20260819153717.release-6.1.183@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.183
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.183.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.183.xz

Linux kernel version 6.1.183 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.183.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.183.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.183.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.183/v6.1.182

