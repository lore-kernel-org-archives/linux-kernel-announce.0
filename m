Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85B88200A6
	for <linux-kernel-announce@vger.kernel.org>; Sun, 10 Mar 2024 21:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710107482; cv=none; b=c4uVX6s52jQmChirztPsoa+OatyVB5UVjEW9WnXexujj0HT7aoaQ67VgKRizBwkmHlMaATESaQ/qatnPzBo4dInhNOE//Pzbpq79g72m1rRq8vh0pSl2MLrHMxw7/RDKBWmyDOTjbHy25vvLoiLjtrK8NtIlxHFphdi51DbduE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710107482; c=relaxed/simple;
	bh=O224bAZUIUZR+xV1qWc5XqZTzvv/Ey1G6/mkMJeaFmw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ivYJ0gpk6V1YP0DRsghPdbx2oWFNT/BuO3Gh2R1ybLCJRG+AxT0RUvIL4hJhzbluVUwC1bYFpPlGI+bIaJn9pkzYm8q07tFLdoRxLXbgsw7c/rFQ3BN+lFtwptxUK/U12VGZNN2Qfi3VR1Ywc1iW6QZ/0eN8AGpISxrDkGQRqCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1710107482;
	bh=O224bAZUIUZR+xV1qWc5XqZTzvv/Ey1G6/mkMJeaFmw=;
	h=Subject:From:To:Date:From;
	b=tNx+BuE3gN4sNf1nb4CONwR8aeLPV9iSPA72xDdWu3/1JDNePH8qo4QVeJ8hfZ3SM
	 B9d+P4aWODAIHRcxQC0nnXgSJtg42ik3yf26tJ8V05R6eOHmoJUd6zXol3rNnWAFUX
	 82usai+iwzY2RCq3H+2HANv7LMdzwebV4Bw5KLHs=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1A81CC433C7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 10 Mar 2024 21:51:22 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id F22DCD95056
	for <linux-kernel-announce@vger.kernel.org>; Sun, 10 Mar 2024 21:51:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.8 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 10 Mar 2024 21:51:21 +0000
Message-Id: <20240310215121.release-6.8@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.8
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.xz

Linux kernel version 6.8 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.8/v6.7

