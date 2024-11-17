Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0FAD1C9EA8
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731853839; cv=none; b=IzCgWSgVZfE4kTrNNAUmxGkgJ+CUmGoVbHJ8e15P9vGJ66KdclvAM5Mk7BvWPJhqCG14eZuwfSbkndE4qhS45kyezez+jlU1yKc0+DoH6fprV2rX4IGJP67nUPGop9V1JIqTCUp+7lrP3yeh4ArkX1+0GaCi8wpOfUpnPPYsk7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731853839; c=relaxed/simple;
	bh=RmVoCitzWd332blahebsTTTgJC/WB4DK+cbyaJnHi2c=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=aytiMHD+ZzfNIQSvHx9f8WFyrap15hTyYNYt+A07FXblFByz7FZ6oRDt3i7fjVpPGu5q1Kozspd3HI/muvrdf/kXshx4lOJ2HzUs5ISES548ei5k9/xFsMbNLzHqDfkgoeWp1V0RRe6xOu2KgbaqxSEQxlyMCQY8Y12FerDPCrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1731853838;
	bh=RmVoCitzWd332blahebsTTTgJC/WB4DK+cbyaJnHi2c=;
	h=Subject:From:To:Date:From;
	b=pxdJr7+BNUL76RF2+4t2EHd6M+yrWiHSlF7ANz77f4+Q4cGRCrwPx9JMMndF4x2U5
	 KItUZ2+bkxg83tafiqAJKWDi8UggV0e9sz0KfrSBP/Hx03Vjbwkr62m+wXlLGNwihZ
	 VwOLZPR+q37tHer+myvN4DIRzJS36ZEsf5aHFjJ8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BF85C4CECD
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:30:38 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B20C53809A80
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:30:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.118 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 17 Nov 2024 14:30:49 +0000
Message-Id: <20241117143049.release-6.1.118@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.118
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.118.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.118.xz

Linux kernel version 6.1.118 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.118.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.118.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.118.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.118/v6.1.117

