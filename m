Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1051B28DD0
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Nov 2024 01:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730424340; cv=none; b=PcyYSdq+sTZJHSSf6gB0abgLpwnjCF7d5ErqfUiHHVEYjFLcAulCVIyJVVj64EQIY27vN6oEx0XPkr72IIKtM8uj+6gE0Lb2e0dLss/cs0oJuntRZ/6v6a7IlnBnCg75sj5txNLNWTAmDqZQxP4H5z3MynScGbyzeXuaRi/3IuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730424340; c=relaxed/simple;
	bh=kDUYG5BzYSs/Xh8sWg7Tyt1A2Q/aKCRePwEWAzBM48A=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=DpD4bbx5thuPL52A2AZvlB3fyqhZPZHLOi8hqfrb2iP16+jD47lma7hdh7BCZK4kt1BwR56N3giVtGivTBqA3VCJQderekmOuBz1Nd5h+Sdhnfl/WT+NQjMhy6k3KNdewZcHusGVYqHi5SgcorNBVzEhE7n05mNg3sP0W0AmOyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1730424340;
	bh=kDUYG5BzYSs/Xh8sWg7Tyt1A2Q/aKCRePwEWAzBM48A=;
	h=Subject:From:To:Date:From;
	b=e/04SBohz77LN/rjEKVqsfttoVeaejOEO5B6UrHMOVpdQ8Ts+TQ6s2T99zIIWRui8
	 nS35G/JeFgQytCdM3cQPe8FBEsm11MMnia9pNr2hrSilEPO5mQu4j41pXqF49EDOi/
	 xsciYA5V2Tv45H9GOOJQYukRT/kTELlfqp1C4sp4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D56B2C4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Nov 2024 01:25:39 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F281D380AC02
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Nov 2024 01:25:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.11.6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 01 Nov 2024 01:25:47 +0000
Message-Id: <20241101012547.release-6.11.6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.11.6
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.6.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.6.xz

Linux kernel version 6.11.6 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.6.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.6.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.6.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.11.6/v6.11.5

