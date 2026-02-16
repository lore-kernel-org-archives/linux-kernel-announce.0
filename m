Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1AF26FD9B
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 09:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771234825; cv=none; b=lCjTuXSzgN78vAf1Jqjq0NbynnJZp3fCI6TcOORhdS0Pk4l1NCcfE/vzgKW8OCj4NfCyH1vrm9Y/9vYdeKQXxJM9RgDlfvY3o4uK8Q7Q36VNeVLBd/ellbsU4ngi8EsWsbmFWWsZi96zwN5cRt5PTz8p36XOpRJJauUT0y7ay/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771234825; c=relaxed/simple;
	bh=yWRfg4iBDfd2NODorEtzE0KfGAdz10WrDtxh7NitrZk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=SFTrodk5OhMT0SsX/XWM8l3I9ROMkRHlegCmPgIM8FsnkKo3dixQf/N80Qklsmf0pEuQPsJe3/j7gaQaIQgCuQ02/UpohiyJLyHycdkGCch0qcLKebXievZOVPxMkSExaDseQiqm8oU4zzJ6r9HebERpat0ucpF+pOjIJH4y+l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1771234825;
	bh=yWRfg4iBDfd2NODorEtzE0KfGAdz10WrDtxh7NitrZk=;
	h=Subject:From:To:Date:From;
	b=aQwjAmtfw2PTQAcv5P1hAj9xKQx7PpaPPV/oVYxY6YR9LrXUmVf/q8N6R8Vi04/mP
	 W6jBnq+FCVm2Ar8Kpp8P8wf5Xn/E5KhAyxt553xuloUxfW08v2zMoOP5og3VnBHFuC
	 CSykXmdRXVus1+R97n9VXafvTWdkAUwX98ie7LCk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B64EC116C6
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 09:40:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 0DAA23930922
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 09:40:19 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.11 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 16 Feb 2026 09:40:17 +0000
Message-Id: <20260216094017.release-6.18.11@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.11
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.11.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.11.xz

Linux kernel version 6.18.11 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.11.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.11.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.11.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.11/v6.18.10

