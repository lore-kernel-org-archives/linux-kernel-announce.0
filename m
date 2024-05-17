Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EA0225D9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 10:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715941245; cv=none; b=SkD9/n7zEeljs+v5xioj8a2/V3Yp5Jf01E+QgpFcyKCq8iwM0mS8v9YtDhZFlvD58mbcWmr8XW0i+4R2RaVlAIKIlB/JDvXkFFASccRBX1Lmy4zEwj3otkN2YEXoJmq2WB1zyVbNaSTlV2Sxtbf9L1eYywcmqiclGGYYEXBiOgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715941245; c=relaxed/simple;
	bh=l1NwGlg7A1tuzht3wpeC1kHIRDDpeJQn7FSwviIHsDQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=c1U+QgfmYi/hJNWdkuiefFH+RZUE0tXbDqcDTQ+qK8UlMptdX1vo/E0bJIXRJGqJUcRijfdcKnhny32BTzLziZpuvsHf4ikVtvdYNCF8sddnaj+8kjxxKU9N9CUERgE1VXp3fagqFeQxBi8OMaVFcJTT5hdZo5XKKgnBboAXAOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1715941245;
	bh=l1NwGlg7A1tuzht3wpeC1kHIRDDpeJQn7FSwviIHsDQ=;
	h=Subject:From:To:Date:From;
	b=TRMtilTAT5wOzmar9vB6S9Mq/goelYcEBCo40lFx0Ni0azObk8bAODU7Ue3H/yD2r
	 6ttnXGXN7WEvg+t4JS2ttGCkP/dAwAH0nxqxJ+jsHzJXuyPUhBWaOsnJaTXuJbTyXc
	 wRFgUuGwt5PMqCsXWqyxsHU0O90lvCp9B6gGlMbc=
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D5FC2BD10
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 10:20:44 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 95DD3C433F2
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 10:20:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.31 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 17 May 2024 10:20:44 +0000
Message-Id: <20240517102044.release-6.6.31@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.31
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.31.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.31.xz

Linux kernel version 6.6.31 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.31.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.31.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.31.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.31/v6.6.30

