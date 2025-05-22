Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84CBD279784
	for <linux-kernel-announce@vger.kernel.org>; Thu, 22 May 2025 12:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747918210; cv=none; b=kcY/p4EOC8xlihX9MqZmHsfHj0itoTV1rhRL95aDzsQyQIXILdOhLjg2hrTpVkfY0U9jK5mV1IlYjmIdguBcePvAkJv7ZzLPpRqra8MMLPT75lckMHL29WL490C3P8Po+yz5zIrF+iEMvif7O7GcfmtMkDDGC/3bgEWWA3kS8H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747918210; c=relaxed/simple;
	bh=FDuzLOuP4Waa4RMfNnbSdYTLi1KZJVRGCdjX2eJEDv4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=cNKpdnnd0Ez8XlYzFgLenx13ILGT3QP7naqaa7iVptBHm4kImYIJ4Zmw57fU//h3TaYkvS87v2tw1BSVXf+l1aeLGugUK4cZVeFnTlTEjl+aaBaExC6CnCD5kKAPy40nN3zpr/Qxx1h29mzF2TWC56itBq+AH6UdVJT7mdV7Kfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1747918210;
	bh=FDuzLOuP4Waa4RMfNnbSdYTLi1KZJVRGCdjX2eJEDv4=;
	h=Subject:From:To:Date:From;
	b=ENZkzzJvkSnY64GakyogxhsR96DyBdYfxINl2jXUVQU7gQV+3djiKD7C5P7Bgc6Pg
	 ylaoclGjpO7Fy72jTLQ9OMxNyO51DkHgfv/8gnXztkOs2nTlHUXY4Id/QbY/rmG/zf
	 f+N6jAs3RaPsHgOLZx9Yso+8L/AyuhkKopnzcuvI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51AF5C4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 22 May 2025 12:50:10 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EEB093805D89
	for <linux-kernel-announce@vger.kernel.org>; Thu, 22 May 2025 12:50:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.30 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 22 May 2025 12:50:45 +0000
Message-Id: <20250522125045.release-6.12.30@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.30
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.30.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.30.xz

Linux kernel version 6.12.30 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.30.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.30.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.30.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.30/v6.12.29

