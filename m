Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A13E913AA2B
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 11:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721303143; cv=none; b=WdEG8wg8Iv/zQ/7Fu6l2XjcEoWhgTjfwJUGmnlZ6eKctX/o8bX8jFr+ImGvUF4UcP2q4Cg5SQlK3P0Ut88kT2roSc/dD7UodI0A/0FezffSQQ9MJ7i+EkohddWY/LtjFOAvGB4KHOT7K5d+k6gNW1DOs50WuKKoAjl4EZjU9XDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721303143; c=relaxed/simple;
	bh=QA/Jq+eF2jx9ur7bW0hVg57/mRD5sz7n4dWzw/Rh5F0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=lKZ1R/O2nXJK0Qtz+BeE8iyp/jYJyCSxzwOSa3+n/gd706gTJUwVQvRj4pyqOVCLYmBeACjG5GotKzi7nYqILkTLTBzFA7vE28Fy0f+x6b71BrpxiSAbe7FBaP5EJxB+LyWkrHbnM1fxAu8HWYO6TMRFq8MMIsPVc1NS2t4GW0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1721303143;
	bh=QA/Jq+eF2jx9ur7bW0hVg57/mRD5sz7n4dWzw/Rh5F0=;
	h=Subject:From:To:Date:From;
	b=WndvxdZzTAn/pT4Pt2r1tGpGuQbhKzfDaV/IPqSCZaYHxhpTw5ZaL0I91ThBaiNsH
	 MhVAAIr3lqGdHh/18wZTRcUeL/zskFkQOqpvVe6H3Ezc5iEuW5iveZDtKApEyAN22p
	 YLBQm2pEupNCOjwO7ZwYXg9myj4Tbfxrq7qdky7E=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 62C90C116B1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 11:45:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 4F1EDC43613
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 11:45:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.9.10 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 18 Jul 2024 11:45:43 +0000
Message-Id: <20240718114543.release-6.9.10@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.9.10
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.10.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.10.xz

Linux kernel version 6.9.10 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.10.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.10.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.10.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.9.10/v6.9.9

