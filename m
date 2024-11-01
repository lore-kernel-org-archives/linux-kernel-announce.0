Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 664E461FF2
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Nov 2024 01:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730424047; cv=none; b=np4idu4al0RmXIhm+aAen3xOc66ktDmp0EWnqIYhjox9p6M4l9SRA6sT0hvfIUQLEyNxUVuplcpy7qau+hFvHYDwT0cACx7d/vG2/xjruhKH5RENMviQT2/zam4271KRvLnK1lFcdlOoP7qK8HEBI+nHKhTJpVNPPLGf7wnxUcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730424047; c=relaxed/simple;
	bh=6TLvpuJKe6ZLcQ+i1mIJoBPnKT6E6DG+arXWSKOZqUs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=JjF4CcqKQulJ6d0tOQxjcxd3EKbYckU67/pk+caGzkbSrZyi84rps8wLebI4kbbHuQILEncXTQDemRSW1FXQIDtb0ZnxGglyDi5MGGm+EHKLkl3jZ3ilqlB8rfyHSvRone4npYBRNdzhsTF3SaqzNdDwlg/5busCH2sVs4VTms4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1730424047;
	bh=6TLvpuJKe6ZLcQ+i1mIJoBPnKT6E6DG+arXWSKOZqUs=;
	h=Subject:From:To:Date:From;
	b=WlQL/goLDcG2IzwlIf/D5VexmZxiSQchbzl+udNJyW3FrnGKDTdITjel7sWnsc/8W
	 UW5v99WpS9X6ryiIya4sIqhALo0YF7/RuFgt+to8Q6rwDj2TT9to3Q4Of6U47i/s53
	 uaS4pGH6l7OzkHTwWXSYs5v0tBWrG1VBcL6dhc2w=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6C8FC4CED0
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Nov 2024 01:20:46 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EEB39380AC05
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Nov 2024 01:20:55 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.59 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 01 Nov 2024 01:20:54 +0000
Message-Id: <20241101012054.release-6.6.59@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.59
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.59.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.59.xz

Linux kernel version 6.6.59 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.59.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.59.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.59.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.59/v6.6.58

