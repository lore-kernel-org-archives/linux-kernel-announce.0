Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133FD14A098
	for <linux-kernel-announce@vger.kernel.org>; Wed,  3 Apr 2024 13:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712151049; cv=none; b=M+gO2nvtyNEMYtalZekCOj5AbGGWcQ8FIPivEyRz1zM91Ye4A9ZcB6rh94GnQUmxRSxJZAG3Ci/m+oCCPHCEhmsQ59Dt/rFidMigtbDiZBTmPdrMiBIrVbzU88oH8lVLt5lc6tp6CdwR4zrKeTghFpyIbq/y2rxnDZyEhmtwCSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712151049; c=relaxed/simple;
	bh=/vvDs/hcZeEhTyUj7nRpZIsv3jTc6RPWG/71vdJaJs0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=YchGXPYwJh36QKPsYZm3sgiYkRB97nbneiqsKI6JkTB1HJ5JwE/G6N9tP2XqqAf/w76NJ7WVn5sACF+hUwyClQnB1wMzZCcCwVqar6v8Li23WPyEjs4G2nsJcOGgYUXFZFc4cCPB0RHSXDUQzpo3RY6fvGGRZIi9mLsnz2IiEJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1712151049;
	bh=/vvDs/hcZeEhTyUj7nRpZIsv3jTc6RPWG/71vdJaJs0=;
	h=Subject:From:To:Date:From;
	b=uuOrvvZxKjpaLlpq0VMGsCGR3Q3Vgmyt54ehWm8HEQlIdUc27KkSdtkU4VO93SY3K
	 J0IXYNVXfn+yCA93eZmmCAAllWIf8q/bAPogezkaMkCx/4jPCD8fPSdZ3SSyLk5xij
	 KAkNtb+9jHY76j8PYq//S82e1uvUeoJYs73pnlq0=
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE16C433C7
	for <linux-kernel-announce@vger.kernel.org>; Wed,  3 Apr 2024 13:30:48 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id D0D81D9A151
	for <linux-kernel-announce@vger.kernel.org>; Wed,  3 Apr 2024 13:30:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.7.12 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 03 Apr 2024 13:30:48 +0000
Message-Id: <20240403133048.release-6.7.12@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.7.12
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.12.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.12.xz

Linux kernel version 6.7.12 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.12.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.12.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.12.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.7.12/v6.7.11

