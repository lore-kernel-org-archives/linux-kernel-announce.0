Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17ACE134A0
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jan 2024 23:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706226942; cv=none; b=pn4D7RYhRt0TnAtqHqTrUK13gxsvTHjQRpcncJXE0Tsq+S15pYMF58T+lpGgHs3Wx/rbQyoGObDxiKciC2c8Z8NKuYiKZxg/OXpZQIwHDeNQgksWqKmB2nEhTLGG7cPGiQ/ZmHIN0uMMce22GIpSFlRLqkkev6QP0OLN8B5+Qvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706226942; c=relaxed/simple;
	bh=Mjm1aNfghtPybzDF/BJbk/sjqj2kVsV+wX+taWGrnWQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=LhHZn0KoNv1ijP+U8KU81ktLPT8HlQ5yIcmAIJOmV+nb4I5Hzbnkhh1oJkG01VpwlDMBUzuTQDbpdeeCibl0Gkq1J0p/Oa0mYTvNqzWeZ/ng/m17bc/muKu/sig/dUUG5bwxrmM2LebBmlvFFbLZ59FXpQBp4ruMWiuZMnHHWH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1706226942;
	bh=Mjm1aNfghtPybzDF/BJbk/sjqj2kVsV+wX+taWGrnWQ=;
	h=Subject:From:To:Date:From;
	b=tu70Pqz6ghoFeTWsPgoNXTRKgUE48iOuoXXieWasWCfZAcjWfzXa/2K1JVrwQrjSa
	 QHuF6e5ifxFnXoQFZeQPhiWX7K9pOa5TDZwR3dKpF3y/IXwsGlNYzFXcTyzqlF6ssy
	 X4Gj7lrst9/5RWjyLL2oSmkLvNNXgi5QObdBONAo=
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBCBC433C7
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jan 2024 23:55:41 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 9B664D8C962
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jan 2024 23:55:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.14 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 25 Jan 2024 23:55:41 +0000
Message-Id: <20240125235541.release-6.6.14@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.14
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.14.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.14.xz

Linux kernel version 6.6.14 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.14.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.14.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.14.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.14/v6.6.13

