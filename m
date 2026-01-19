Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8478A366DDC
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Jan 2026 14:43:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768833797; cv=none; b=RBuzy6hRR4gO1irrobf3omQbrRiORxWdmKGYs+HMl1WqlDvH19Ayc0Na/0TX+G62hmVy30eflroyijdwT34zewWw23Okefx8vELeqDak4gavgxXz2wtZq4ASdK/qdgar8d7nxMt587lZB0S8X0Jx5q/EHxHDoH6VbSPgSnAZdZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768833797; c=relaxed/simple;
	bh=VySzBPcNkEdJVcURxdCKmcCpyECmgF9fmJ7WMKh8klU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=kEglo+UfmGJnZUZEQArk+sZVJWqsuGAt264Jbr80AUszZSyF1nIWBTZE8N9FO4/5r1rAjVcXBmKrZ7dTG4mmRbRfqRt7YMfc2M9QPoCHks/VhMnI8E5BZKiyZPearTIib7zRBum2LJaDLTUMQswfeU4NY5O/u2GJKHSFNupEq0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1768833797;
	bh=VySzBPcNkEdJVcURxdCKmcCpyECmgF9fmJ7WMKh8klU=;
	h=Subject:From:To:Date:From;
	b=XgpvXpb1fRKnUyqDPCvh94YWKALzQUJSDZPuz+4toWnrg7W9j1DabAD4mhYX9I7Y4
	 d2JgmGkaSLjk8vtgzqpa4nRH01AYtlslezezDNSPP0yrAX7bPb7xU0Q/5P/LicWP8X
	 hp8sWOA1KAaMeKJ2JhOAVRtvZ71EseTC7qef6Lyk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D586C116C6
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Jan 2026 14:43:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 40B1E3A72A5E
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Jan 2026 14:39:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19-rc6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 19 Jan 2026 14:39:46 +0000
Message-Id: <20260119143946.release-6.19-rc6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19-rc6
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.19-rc6.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.19-rc6/v6.18

Linux kernel version 6.19-rc6 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.19-rc6.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.19-rc6/v6.18

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.19-rc6/v6.19-rc5

