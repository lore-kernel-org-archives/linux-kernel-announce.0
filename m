Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24122346A09
	for <linux-kernel-announce@vger.kernel.org>; Tue, 23 Dec 2025 19:43:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766519030; cv=none; b=CLsi9e2AkJ6sI/ZkkqQiUrxQEUFZ3W1rCS35MWV0EyiIMISv+tRZWBG+/sGro+yjyv3jCrLNaawECHiO9v7VKbcqQW98sLF/k18olALFNy8R9sVaI2VG/3zZLezPec3boxsQ/EnfUbT88chKIxdUDC7O2FpBjAj5QufpeB8858c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766519030; c=relaxed/simple;
	bh=I12GxQb6jczSUYWLMdHZ0Cqt4+ZqxNLPq471hpHUtDY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Jf6+mZfzZYKtiqsVufhY/iA5GeQFpSv6Qd8CoJCfvw0CdmUt2DCD/Gqj9Xh8mMVBZMncbN5hRyhMyXoISxlVXVnEC7ZY/icIZgeyYQJwLvBY6zz/VJobqLYWMyNawggZo9wCOyBsCS4xa7K267l4x1OV4NiO5J+omxgZfQTVjN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1766519030;
	bh=I12GxQb6jczSUYWLMdHZ0Cqt4+ZqxNLPq471hpHUtDY=;
	h=Subject:From:To:Date:From;
	b=bPtU17ZHjShwtL6rts2baf3eHsUPtJ4KicZoBIgzOp5Kri+efYYlRhm8W4dvMc1gV
	 M8WECupaz/fpRC1E+paA8V1mBtDONFnfKfqIrvvvtWvYUOFF90nELCTMw0htrf8gOO
	 jJPdDZ6bgJzyGG7vOUmLOoKy+GfDsgC6s17DLKT8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C715FC113D0
	for <linux-kernel-announce@vger.kernel.org>; Tue, 23 Dec 2025 19:43:48 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3BBA03811A41
	for <linux-kernel-announce@vger.kernel.org>; Tue, 23 Dec 2025 19:40:36 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19-rc2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 23 Dec 2025 19:40:34 +0000
Message-Id: <20251223194034.release-6.19-rc2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19-rc2
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.19-rc2.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.19-rc2/v6.18

Linux kernel version 6.19-rc2 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.19-rc2.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.19-rc2/v6.18

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.19-rc2/v6.19-rc1

