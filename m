Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7A3D20A5EA
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Feb 2025 13:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740144617; cv=none; b=a5F/T6/72R8JKc/N04Su3e0GvZ4u3+iOJSdg0hRxcxHJTmNfKDFf/IftYySn8hfPz1pcVBdN3xSUoTbIW+aBtM4gQYq4f/Vbwt688pvsguWDiRaFKexhuXTlAwBxTgHQ25QUcQk1Fq1/foizK29A7SX36hnWZqoWKZ/Bfnwlp2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740144617; c=relaxed/simple;
	bh=4WuT1PGk5zVX9XgVbMasPw8bqnHEfjtwpKwvXAb/1rk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ZYJ8UPC7kKuTqpioLf/8AAgHEpZQrQb3VooXkJaQofXn2ORPT5h2Ar2j1sriUPQG8EaCVCs60cl4XgZhTx1qAq8Fut7tX3QbU1fqsygIrsfv4efAIOv/0zwmtqCBVg0rVyU6gzc1aLPMfDaH/rtIt2SLE1sY11m9SYob+y2NZLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1740144617;
	bh=4WuT1PGk5zVX9XgVbMasPw8bqnHEfjtwpKwvXAb/1rk=;
	h=Subject:From:To:Date:From;
	b=RM013Rqb1iV5e/bcuA8lsXgphI3jg+za/7mdYVZlQ82C0PaTT+ug5USM/LyVbvUst
	 73vOpV8UsJJmntWQBrtBDqihSrkMh4MsgojSdbF9JWpRJEAdN/IYwgk8YWrXdfgr5S
	 xLEl82W5L5n6cUf1k7wFx4stsqSvMxlLjZsvLIbA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0090C4CED6
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Feb 2025 13:30:16 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1C07380CEEE
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Feb 2025 13:30:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.13.4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 21 Feb 2025 13:30:47 +0000
Message-Id: <20250221133047.release-6.13.4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.13.4
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.4.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.4.xz

Linux kernel version 6.13.4 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.4.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.4.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.4.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.13.4/v6.13.3

