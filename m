Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EE6F367F4B
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Jan 2026 10:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769164524; cv=none; b=Ylq519OoGJcOJQIQczQkPA07UmZ5znX1AvaDH1MEpb3H3gnhGT1ZaS8rrM8ADn8DUn44NymSD2N4OoXfZPoMM9h6i8I+1mFsA/G271D/T1f7El5fZDzRmPYsj8HpbU5QVNwnVpQuF0JTccu482l/bzbdWjCf46GZgTM4H3f0Qm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769164524; c=relaxed/simple;
	bh=TI3KzCKR3SclgO4CRYFrO2qrnMeyugfySdRxmiJ4sYM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=AW/Jb0OlDG713SWgHXQ/9qhw/Zse9RCWVeOVbMlJBg26R3B5n9bXipzmBzEfglRjffEHF0TsuB8HH5mznscpgJwsmMrSnGXrwasN2npwiCx3mbnqDBhbDi1HFlSm2ZeYcLFOygY8zUciL/w95NiLL/oNahZ8GE33PXstPoSC1E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1769164524;
	bh=TI3KzCKR3SclgO4CRYFrO2qrnMeyugfySdRxmiJ4sYM=;
	h=Subject:From:To:Date:From;
	b=doZ+1Y/WBIZn3tExOecC/mouQeH4MBBCmQsThIaK03tHeymGwYz7KPSBAMxKqy05L
	 f+GVyezzLjzuLG2LxH4K1idDL9e3VMPzHKfaZbCTRwf63p2jBqTFpaf3/fm9fxnUvj
	 ZWfzJkv0wZWMRTK1eJCDl0Np3m+at+uxMyJT5m/U=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E036C4CEF1
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Jan 2026 10:35:24 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 8BAE93808200
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Jan 2026 10:35:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.67 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 23 Jan 2026 10:35:20 +0000
Message-Id: <20260123103520.release-6.12.67@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.67
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.67.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.67.xz

Linux kernel version 6.12.67 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.67.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.67.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.67.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.67/v6.12.66

