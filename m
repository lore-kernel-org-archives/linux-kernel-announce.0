Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B821FC8
	for <linux-kernel-announce@vger.kernel.org>; Thu,  1 Feb 2024 00:35:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706747742; cv=none; b=Z95l5c0S3+Y8Yk83OnQ/dXnhO/v3PdSDLNVmzvNsxkUCpDNkS6DO7ut1oRbvR0/Z//e10VdBPcbs0g/eHdaixmT4Ri0TX3LtaaDTrbtOqTEnPOryRXoazN3P/FPfpp6aoEP/Ug5OC88AvIMPuyOtMpUT94EscfF2Qo7hbxC7Nq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706747742; c=relaxed/simple;
	bh=g+7k0BOWs/hEv0/4zJpyB8tZuNBtTJoZbUSvznxgEko=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=LaTKpABnGQjmpxjXGdIKX8phhoRVzYiqvw6kEy+Z8C8j6kleL2OU9PZtpXjlNDx5SY1ZD45JffIhkOTqMrEXlP/3M+o4JpZcDOFHF26fmPHwgFqCYmrVCwpeV4j89wlr60AGuAZ1beQitOxmOjFI0J1CcQNe7NtPYE/1ihNyesI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1706747742;
	bh=g+7k0BOWs/hEv0/4zJpyB8tZuNBtTJoZbUSvznxgEko=;
	h=Subject:From:To:Date:From;
	b=ECI2IQ8O0D6jWMybGMDGL2zrH5S0Iu7t0oXJQicUZ+fXf8urloYgVWmFqdJQzKKtG
	 ZwK3cGdqk/dl5mDf2G8+QKgpkF3Kyda6Fhawzvumw/UH0tjZIGfnRBVbP5R8n9/TA4
	 z/Oub72ras1dv6Pvgvl3NqALlnynEJlQUhdpzSxk=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7444AC433C7
	for <linux-kernel-announce@vger.kernel.org>; Thu,  1 Feb 2024 00:35:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 58FF7D8C96C
	for <linux-kernel-announce@vger.kernel.org>; Thu,  1 Feb 2024 00:35:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.15 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 01 Feb 2024 00:35:42 +0000
Message-Id: <20240201003542.release-6.6.15@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.15
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.15.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.15.xz

Linux kernel version 6.6.15 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.15.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.15.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.15.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.15/v6.6.14

