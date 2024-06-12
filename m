Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57ECA16D9CB
	for <linux-kernel-announce@vger.kernel.org>; Wed, 12 Jun 2024 09:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718184343; cv=none; b=rV14b4qVteC1W1wDu+ibFeQ5s3z0HgYGhSgpUarnGcxSEd3Pf5ycjmXSZAJLBAXDrAqgBJoEM/YhqxPeP4X+pgH/JO8B/zZMRIIaSToo8f3eQ1N81r8ziV1mxjXg9H6vEPDnvbbghUeOGFt1f3Z6O8RscoG2fdvAcHFv4A1oAjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718184343; c=relaxed/simple;
	bh=S5rEyKv6QNV2tEte1i6Qi0EZN1WJKcazJ76a1U/annc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=n0FRER7wjPbZpyLcgbBoODZNq5t40SEDxr2VlMw729bYO1BVjvbhBVVmzysyXsC7HZZgVlw/f7xGkCx5r7N8KEevIGt5Na/1USMqtPCSiIMT3TGBFC9RpLEZoAuRR3Rfn9gZ2BTYT5HXhDvaV/hoaW98C9V0fLXdS6npxD7/xvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1718184343;
	bh=S5rEyKv6QNV2tEte1i6Qi0EZN1WJKcazJ76a1U/annc=;
	h=Subject:From:To:Date:From;
	b=G/Uy6JoeYLiTBXMxPeULD1IqbNTUnz2HqrLobTp95GbzTIMEveVoIAe+sDS1CRzDV
	 rv2oNp9JBVFLR+IRsrtA0bxfbsoFgBwr3OSwiC1mt4k7ag6YkTfjGTUdMzSvENIj6U
	 fw3Bsy/XerR4pYklzj6f08LtDMUCTAGcvwL+P7E8=
Received: by smtp.kernel.org (Postfix) with ESMTPS id D841EC3277B
	for <linux-kernel-announce@vger.kernel.org>; Wed, 12 Jun 2024 09:25:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id C9CF9C4314C
	for <linux-kernel-announce@vger.kernel.org>; Wed, 12 Jun 2024 09:25:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.93 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 12 Jun 2024 09:25:42 +0000
Message-Id: <20240612092542.release-6.1.93@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.93
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.93.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.93.xz

Linux kernel version 6.1.93 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.93.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.93.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.93.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.93/v6.1.92

