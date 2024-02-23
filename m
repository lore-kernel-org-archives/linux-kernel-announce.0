Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEF312E7D
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 07:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708674646; cv=none; b=hBU9XtlyN1M5fUmh7woUbCc11Eh3EXuTG0JYN3Fkc8Y54DBsAo8JAfFtCrvI5iZx5lI2olsiq/v6xsXKROaLPmKApP4hNGmyO7pkDkQqlIJeJKIqaLnUWg/iFMKfwnM6vnV0POuODOW3vjjRJ3FtDfi4gAcVqzJqmPzvyyPTWoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708674646; c=relaxed/simple;
	bh=y9q11qyr4Kaqr8dymgBGk1W6330VEjvt1jpc9Q05L50=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=CE96oNEJCCwavQxEpip1s39g/BMylULMY/E1yaq6GrVh4HtyUwXxuWlCq8/sndLX3e7Jq4tgi5T55IwpTcI9PiQVAsy7IzRf5ZPsvD7R5E3GLYm/u2gvaWOLAosv6RcgLLzFoxiAxxbA0yjY3sEhTIa2pjjbTDOtYwRZxBmAcm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1708674646;
	bh=y9q11qyr4Kaqr8dymgBGk1W6330VEjvt1jpc9Q05L50=;
	h=Subject:From:To:Date:From;
	b=DmkCjoIbCgDd8Z/iU+SivDQ5Nsiz+YrVV1cJ7uwdMKvI9sE4xQzy/+8nvEaVai0dh
	 9iodIG3wD0Qc2KH6Ap7A0l1tT5BPB5KnMT3efi13Hc1gkNK8sobdFXeE1m63qwDmNU
	 WHFGbuTuvYPHBj1shAzke/04Z6RRsv4ZoEWt7hgU=
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD244C433C7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 07:50:45 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id B5F7EC395DC
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 07:50:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.210 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 23 Feb 2024 07:50:45 +0000
Message-Id: <20240223075045.release-5.10.210@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.210
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.210.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.210.xz

Linux kernel version 5.10.210 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.210.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.210.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.210.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.210/v5.10.209

