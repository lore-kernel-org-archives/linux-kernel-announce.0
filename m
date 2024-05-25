Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A61FF43AD6
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716648349; cv=none; b=pk6ckairJ8F16r2YfwV2wvHRA6Mrl7SOvFiGvus5ILz3JxrRCJZLJmo0nL0xPDvbAhSf8t1gjaejgg+nOhLyXWe+ngguviX2bBl+uBUw/o0qiS/Hbcc9HCC+muodxfKY297vHV7tmjo0pJuDLK95GOePnwNos7mNZa6vihL16QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716648349; c=relaxed/simple;
	bh=W5VLKiLFejRKYBBtt48b/uHz6OYIaMaKjLVZ8TR/fDI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=DJmJ5DHn2jWnvZNcX/u/2Bj6WBpyNM92u7QZew41fPkyzjewwuWb4ABuEn1e25GpMqRUQtY+jnBOM+OI/PMkaFSEyiIpdqLmCz4uuJn6X6Pw51qrlmj6rqNEpMPW9GJDMGKMiK9xyyHRg/Vca02U+P9pD9uYTzONCTEOVL5qA/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1716648349;
	bh=W5VLKiLFejRKYBBtt48b/uHz6OYIaMaKjLVZ8TR/fDI=;
	h=Subject:From:To:Date:From;
	b=QbIo2h+Z16t8XKpWHYenJZ/d5SSiGXLS9p1Jmp3MqTxtr/223V8lukC0gI4uLhL2F
	 md2s7rvY5Slyb/4rW8rQCPQilzrEwsC///yjOaA565iIT4gwv6n/KKwjVB2rj0dPog
	 wiH0E5ddvthDza8SUToc3yYN+BELpGJ/jGSxkjf0=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D3C1C32786
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:45:49 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 562CBCF21F7
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:45:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.92 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 25 May 2024 14:45:49 +0000
Message-Id: <20240525144549.release-6.1.92@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.92
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.92.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.92.xz

Linux kernel version 6.1.92 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.92.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.92.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.92.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.92/v6.1.91

