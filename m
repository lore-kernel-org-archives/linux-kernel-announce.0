Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A61C21E527
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716648349; cv=none; b=Wu5+uQcY2OgZ8NwUdTssCF7M4TnwrqUEkD96vnvoU46ghCtfRENJkcGAhqi7/hjN0TfT0O8UHIGH+6TIBb0b94eN2my/mh3DBX/8FgkOus6oIqTchkbiDpmYqlYqTwrm3AX2nYgI4+qLl0c8d/pSu8RL1tGopqDP10m2Lg//MQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716648349; c=relaxed/simple;
	bh=R+/Nk9zuQnig9WpoPcoVBkWQNN7DyfrdTgB/wTUZCgo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=k1fZPc5lHfkciAUnpD1Ys72+alP/utXujAFJ8LCTf4KjegBwMLAC3QB4hL3MpGmfsrY7OBq006fIQI08kCt2P5NBNtKxxDSt5dmc4ijOF4WOYp+nnb+fIIAaINjCtNCGnlDRsE7C0Z8OtvDMFvePwdFc52VOXzAdVuRA66IFwj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1716648349;
	bh=R+/Nk9zuQnig9WpoPcoVBkWQNN7DyfrdTgB/wTUZCgo=;
	h=Subject:From:To:Date:From;
	b=sxdDz1ZoK9Yng/Sob9CRg71snEP1t0cL/VeEh3MYR3Y98JpOvze5oA/thWyYiphCx
	 tq3SolpIHqJNd/iRHrz3mTN83+6PfXesvuFgOqDCDzSQf0Hk0lSEGFHyjmjGQZOXhj
	 HorsiFasP2ZOfmVqPGCrpEgA/Apg2IPOY2XVocks=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71741C32789
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:45:49 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 58268C43333
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:45:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.160 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 25 May 2024 14:45:49 +0000
Message-Id: <20240525144549.release-5.15.160@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.160
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.160.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.160.xz

Linux kernel version 5.15.160 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.160.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.160.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.160.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.160/v5.15.159

