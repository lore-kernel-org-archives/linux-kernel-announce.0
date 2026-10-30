Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793364930;
	b=QUy2lpr37LEI4m/qKPEGvDV40tCiIbTL4Q55VWMHW+PDcadFoAlRgSSfCv0fFaUaiPdo
	 zRNMQNTZ2tYlXUjDqqWwfzj1p7BZrSyendRfk9sGPr46GFVAL161nCkbp/zABSC00+CTL
	 961a+ZZXypMoR7sip8K+HzmX8LiNlqb08OiCPiaUM5A6+upsdw2dWPKYe/p7OU9fXKoMS
	 PwGg7BWObgz2LAcZLTrToyRlbqmtod6PbKu8tBfy/e3gXg83PTtAq0c4LtsFFyZP6mUQG
	 ii/ia1LqHtpxLesIBIIBVNMMoY1j3cXmy5RpA7LPz+X7ufs74Fbz5pHIGpj5Gm5taLw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793364930;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=fnGvZSyZgE610fklBi8J3bwrDiLPW8rRVgyI3P3PMO4=;
	b=Yx9O1iY8u71peIObsYuIFKX/v6PL4w/q5rLeFSV7yFSjnav5xQz18ibWXDOSkafvORfQ
	 CGo0jfmuDQ34N/35mxZvM1UCulUq/3alpwk1WD2gPjgxl9GS4FWBW/TINIE3EOVGdJq0q
	 AIhn4k770X3CPp5FVybcDoR9NThp6UtW3qKZv+s8rbCA9X/FFqEHXVXM5tujjV8zKYbO4
	 6mUDYmDw0ZNZV0qG1wX1cOO1R8tBmA5ZIOkf+pQcVTglY6EefUhapVE2cQugFGgOJEzEU
	 Tk7BXcfZQhV+Ojztcv1lfBGEl+oNSslKNRef7Wae4wYpK33BRX6x3wQ8RL61846WfxA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416DC606A31A
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793364930;
	bh=fnGvZSyZgE610fklBi8J3bwrDiLPW8rRVgyI3P3PMO4=;
	h=Subject:From:To:Date;
	b=Dn7IYWN7J+mH4nxlmGX2W49Lq0v0DFArn88lYIq7+2UjTrTaXSFVSPXG543yOG09d
	 xH9PfmuL/JVnPgyvftPmjbpOdbTYgYmtulxWNhRQGh8TZnipeYGhXp5T0p3VuD9ZSp
	 e8jRbfUnGbWpE+NDXDegzaZuYvlu7NjL1ZaRBbHTww0dABVfV5mKlRIaDcSRuYdtDl
	 rRABD+wODX2Kmv9jmtvlWulC7FoB2ssEN5nlDgVxf4KHCEf+scWy3ANjxx/T2M4ElA
	 LTNR3OI0XvhJdoPaa7g/Pm5MdMBk6GR+WWhDnhT4AG+LP0rHussp8TueKZPH19ozgs
	 SaKg4gtyMTeEg==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3ACB1F000C1
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:55:29 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BCDC33800460
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:55:29 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Post: <mailto:linux-kernel-announce@vger.kernel.org>
List-Help: <mailto:linux-kernel-announce+help@vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
List-Owner: <mailto:linux-kernel-announce+owner@vger.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.3.1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 30 Oct 2026 12:55:28 +0000
Message-Id: <20261030125528.release-7.3.1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.3.1
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.3.1.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.3.1.xz

Linux kernel version 7.3.1 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.3.1.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.3.1.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.3.1.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.3.1/v7.3

