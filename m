Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A763815531A
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 14:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714661449; cv=none; b=QrgW7I8kzezdoJaDPFWU1xmKqLjQNcLc9+JyfayPmmB6kUfhT1PE2HaPIajO7kUeRrSPuaB79OPDbck3wMb8kfYcmgzhSwkaEXLRKX3KFWm7GPMczxdpWEtWS9c4stc/Sxt1yioF1QMf0rfLrlfjmj/Rku1LdMo1DbflaJoXeuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714661449; c=relaxed/simple;
	bh=azBWjPpgizQx2HoyoYKzvd8gvJIRfOW60uM8znC5ta4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Qz0MnRkslCLIoNcEoD/GFs7A8iEL7vy9ByR0NrBvkGjgAn6pK7kBMtW599VXx/qyx7o6iWi1c3Sw3ifdAnKE6vAYurMwFqLn9RIteCmspv63moAxs/HJG5pWKKcjXV/OtIrtywvsid2MTsS8ke2yG9SAt4zIr3oKBh811m1Q0w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1714661449;
	bh=azBWjPpgizQx2HoyoYKzvd8gvJIRfOW60uM8znC5ta4=;
	h=Subject:From:To:Date:From;
	b=kltyrRfHPNF1fZDe3TN938bl081KPkAnLnjHAr7ePI1+/O+slJzx0gNBAJtBq1XLw
	 m//0BI2AXU/7a0/TjzR1BW5LENoD9MMLqi88pNdpJK0fJD3Jxd2ZdACx2SRGipkobT
	 lliJJTf226wIOd8HnwzkHItqK0MVihHAq+nZwjFA=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5E962C4AF19
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 14:50:49 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 51DF0C43443
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 14:50:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.90 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 May 2024 14:50:49 +0000
Message-Id: <20240502145049.release-6.1.90@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.90
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.90.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.90.xz

Linux kernel version 6.1.90 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.90.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.90.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.90.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.90/v6.1.89

