Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1B6121B43B
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Nov 2024 15:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731080743; cv=none; b=GBJaex5HxxmLQlwNy0QMxg6ZPDRmgUuczhMi+KPkMlVKNNuO3D4GN8SmFXYlVY4LNYm4K0cuCCy/TGtsWFr26OFcmS+Woks6Qx0b70DdslgrE5emQJNRadzRonYgqpb+WZ6ikSv1G4qPHgckgC2bki31pixRjig3lCxt969I76o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731080743; c=relaxed/simple;
	bh=Aw0C/ic0jb9jv4b+WXb1aJcDV7uPbDfl11ItZgHxxMM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=P8UityV82oJrD1SWXCwrJYwzymIj+geFRsNBx4dZi7CffvqhIDP+AiXQ5pxBsfsr1anI/vyfC+kFtIjh9SjBkLGqiiG+zcmv0QTT3jNW2W0BxgBazDaEOB6Pm8ejSW/jodTKLxAR7z8kZRJ1fKNcCWGtYkIAkInR/dBhao2Ip6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1731080743;
	bh=Aw0C/ic0jb9jv4b+WXb1aJcDV7uPbDfl11ItZgHxxMM=;
	h=Subject:From:To:Date:From;
	b=B1JbsRaTAnca/lgfZaYDOFo8MY20BRuANILQM5bVzMVThTLAL9CYZpIF+7bvUUv7K
	 xeMgocaHUGaHEwp8LiMK+TvaiV5s7DnETPYqCqNcWr5E8kBx6hV5K1iXGJ3duW7A+H
	 8KfKfq0D/mAkA7oXFJbETpcTPVBzIAFocnDKNYkU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56718C4CECD
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Nov 2024 15:45:43 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EB0273809A80
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Nov 2024 15:45:53 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.285 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 08 Nov 2024 15:45:52 +0000
Message-Id: <20241108154552.release-5.4.285@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.285
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.285.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.285.xz

Linux kernel version 5.4.285 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.285.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.285.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.285.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.285/v5.4.284

