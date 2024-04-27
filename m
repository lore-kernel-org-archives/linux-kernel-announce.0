Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139361C17
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Apr 2024 15:35:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714232145; cv=none; b=Qnco6+G3kgyciazDOQxuv4yAkI2D9l2kc+PuObmLr9ooiSBjo6DwLh0DCD+MqAtYLabOYaCtLhJZsC1nZ+9U8spYPQ7yy8WUJGqoiudkGQF/Wqf0Bn4bybAcjmwS+QKRStg6wcjoEhPlxoGnhnzRRCPwX1XcomR7dtSoboZprRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714232145; c=relaxed/simple;
	bh=aCDd46qY7OMiO6+yMgEuhOxo4Mk6OBAkjwLwa3qoS98=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=rlQ+iu0S4KjbXrzei4cx7Kf1B9EOwiRBBzOFNuWr8V7u5AX245vxKV0JQkZ9Gi1gozdM9a2BmaAVUvGzUVSaNV0THWZlzxQisuSyVO4ltoqkjpat30VAYBmEBmsMZTN2tN+oYO+Qm4LM+Dvcipn8mfjb8kf7eM3mqC9j+1hnUsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1714232145;
	bh=aCDd46qY7OMiO6+yMgEuhOxo4Mk6OBAkjwLwa3qoS98=;
	h=Subject:From:To:Date:From;
	b=CPS2uevzwz/OsuceEZja0rsZ5OSYdRfHWMyV7nTYtqTVlFKl/aCr7skCphNH8HGWq
	 dEkLdm1DXvmJ+vOQeYPlpCT7a8sk6SA5RJ0OpgoT+5++ieOyOXa3Hivjci7DKhkds4
	 zZItddYhkxeY/9/iwaovN7mkxZ0C+Umhsi+E8MvU=
Received: by smtp.kernel.org (Postfix) with ESMTPS id C08A3C2BD11
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Apr 2024 15:35:44 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id A7D6CC00448
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Apr 2024 15:35:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.29 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 27 Apr 2024 15:35:44 +0000
Message-Id: <20240427153544.release-6.6.29@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.29
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.29.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.29.xz

Linux kernel version 6.6.29 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.29.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.29.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.29.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.29/v6.6.28

