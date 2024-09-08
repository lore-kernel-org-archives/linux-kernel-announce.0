Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54A04D8CE
	for <linux-kernel-announce@vger.kernel.org>; Sun,  8 Sep 2024 06:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725776145; cv=none; b=YOBSVtzWkrJmsdldrp3Frqn6EdWNHQozzS0KcJliHtHNjt8B5Atw9lc3i4+Ia+Vbd9KSx9iZX4RlcLo+Qk5/jLWUf/1fkt5XIC77HdwzC5zdmkM1neyWeidCGr4nvWjtUgQfYVwcPYKWR4WP7ev/gR+d5k8GkEFvpBiFO+INPIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725776145; c=relaxed/simple;
	bh=GcCwvw6W9WV7+M8GBJn6QV9788sRS9dDrldbTuFKmqA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=JWpBVPy/0Ktu7FHZqqhXSXhJ/3EluVNzYFdj10L4lSF2iE+dIgEQrIGlWZsNJZtywHhdC5ZRq5tYJOpidVczkG71EGXViET69D2RizBN4Dpzppuhk8qZvcvKmxZVjiJRByM9I2Qsw6avL57TGIAvOvAXXCNPZfhnkqk3Kclu2zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1725776144;
	bh=GcCwvw6W9WV7+M8GBJn6QV9788sRS9dDrldbTuFKmqA=;
	h=Subject:From:To:Date:From;
	b=Xg2zpeG44I77tHeWqpZ3jKf2zdL/o/JAPHHqHPyh00vg8H//H5Ozmo+H2Qp/6m3sl
	 PBltluBD3NbtlMMmWfwfvs2zd6myBU3BsHQTxxhfoLfbtdGjgBd3zJ5ySzshhugDlu
	 LljGXd6O3/3d7bG1bXUB1oYnTq+gvjfu8SLVFFkA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA9B6C4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Sun,  8 Sep 2024 06:15:44 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EAFFE3805D82
	for <linux-kernel-announce@vger.kernel.org>; Sun,  8 Sep 2024 06:15:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.50 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 08 Sep 2024 06:15:45 +0000
Message-Id: <20240908061545.release-6.6.50@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.50
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.50.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.50.xz

Linux kernel version 6.6.50 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.50.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.50.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.50.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.50/v6.6.49

