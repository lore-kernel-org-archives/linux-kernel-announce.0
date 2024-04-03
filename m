Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 950BA1494C3
	for <linux-kernel-announce@vger.kernel.org>; Wed,  3 Apr 2024 13:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712151648; cv=none; b=AphssoYQYdreAQnxnBKOItCqwQOUdeJY+Ifd+B6bQb3SaAhTHKRV2yd5IHbDAfambez42tO53TzNMKA+l2E9kmDA1/CpTXcCARM3rXWKGBtqvVCX19cYY9UgI0O0R4Gjdub5TO9ef4/zN32shq9vc8MODdEbqVGeQdeKyzw3DEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712151648; c=relaxed/simple;
	bh=lYpOXDlGOKBzuO3GtrbH2CKSIVrvjK1jZepZLdh6BDM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=rnoGSbi9wmuZ0UP1t5CanteSfXfIDlUPr5IKehadXf4NviLzuaC6zgIS7cY1SMZfefvFC4Jth1eLbFL4py3zYJzIxLx/0NDVGhrx6zm/74euRCd9+CR1HdVNwpOa1QEC2IFK4Sd649k4HQndy65VPcGRyDGjcr13+MNqaWWJ63o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1712151648;
	bh=lYpOXDlGOKBzuO3GtrbH2CKSIVrvjK1jZepZLdh6BDM=;
	h=Subject:From:To:Date:From;
	b=TAQZ2Jx5GB1Bf4Rl1pYJjOqEPaRSLBlZTNbfVv0MJTqW4y6IESYlDxy22uFqVgufd
	 HsFOjWSP+2huAzwYY11zbIy4I88KRl/kd1hs7yVQV625CuIKO/6IwoA7yz+aHtEmKN
	 5i6Ud48XXxJ6yKeuiemgReqbFdhfjo8FVWW2KCVw=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DBE5C433A6
	for <linux-kernel-announce@vger.kernel.org>; Wed,  3 Apr 2024 13:40:48 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 5E559D9A151
	for <linux-kernel-announce@vger.kernel.org>; Wed,  3 Apr 2024 13:40:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.84 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 03 Apr 2024 13:40:48 +0000
Message-Id: <20240403134048.release-6.1.84@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.84
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.84.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.84.xz

Linux kernel version 6.1.84 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.84.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.84.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.84.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.84/v6.1.83

