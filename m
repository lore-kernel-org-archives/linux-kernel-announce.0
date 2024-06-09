Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D456151C4A
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Jun 2024 21:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717970353; cv=none; b=E4DPrCf8Xvy7zKKYE8tWWF7fkroSRSLaoDphvU7v/GyWniycTNdK4CG1xPzz4eUggVnNNgUu6kIPnchBeVa9+vOzNcE/EI8Lzer+BFIeCZjtnAxRifJh36oJrexqh+89bBLp0CJZFxFJwS+hENEzCvoURYof5okgxqBzfDmMwek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717970353; c=relaxed/simple;
	bh=4hWBNiboUGxlUv59zlIgFXKIgtlr9t0khLzu7y4s4Cw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=T+OTTH+pxv9Zx3094g1Jd6vXbxSJalw5wFwurLmkwOkXogo38Qzb9SQHCP3AoieYmKJvkNoyE9PtkUkKJqAxdg4FdLTCpp9zVHvOZXCeSb+sro97M+N60ccK8Vf4tDSS0CyQo7/+3NCjCL6pUhVNzH8NaxW7Hy4ZN+EBdG8S4FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1717970353;
	bh=4hWBNiboUGxlUv59zlIgFXKIgtlr9t0khLzu7y4s4Cw=;
	h=Subject:From:To:Date:From;
	b=sJgGUgSPpUVono63U8vT9mlxqPPm9TR8NZWLf8YiodDCubxXq4H5KTdQGEr9985FV
	 Jr00TcQUeBdzzX6L0SfPo5KzK5gjqhMVxNWrvKbSuiVVjA1+d7vihpgFtu6RpXAyDa
	 wGwdzlDCbX00C8ZiT4d63G1ioOGUiuppa0aH0VEk=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8310EC2BD10
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Jun 2024 21:59:13 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 75601C4332E
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Jun 2024 21:59:13 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10-rc3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 09 Jun 2024 21:59:13 +0000
Message-Id: <20240609215913.release-6.10-rc3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10-rc3
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.10-rc3.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.10-rc3/v6.9

Linux kernel version 6.10-rc3 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.10-rc3.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.10-rc3/v6.9

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.10-rc3/v6.10-rc2

