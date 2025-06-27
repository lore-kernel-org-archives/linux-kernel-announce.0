Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2E2220F41
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751020212; cv=none; b=ksc6IjnwQYwetApXkO7AhrtmzrkbSUdypIt/3z9O5kESlVaIgOsY7BLIDTOBsVOp8HfDT5O22AfRieM2JUTHBaH6hLmlWh7YEFDc1NN17ghJp6GCEFi7TW2BHo+iCZ7Xu9Fritw0FZej1CVQRi6wEGtFizqA1JNvox/+5ovMSmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751020212; c=relaxed/simple;
	bh=6YNti1bkvo1BsZB00eUKeSXTr/vsgCBc9WTPyJtJek8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=MpIHhjcuYTtRNX5lW/siiXJdNeydS8DWexUlQaz0S2/cyjj1Od5NoHk0aiSV2G3S5U39UWz0/ALsOWHX292wG7OarU9eMQi5WEM8vnreDsXwRuIpMeeZAopJ1j8MHEqEAuKAMkbpgoUYZFkGSGt6rxqxnYJrqczVCJYT6kd8/Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1751020212;
	bh=6YNti1bkvo1BsZB00eUKeSXTr/vsgCBc9WTPyJtJek8=;
	h=Subject:From:To:Date:From;
	b=CPVSx1AfVYXGOFt+F6vYQHI/k1wMFpe27c2i1Hbi056PjKHeWZo0MY4Or4TIDAy7D
	 KbAg5IbuQmjulwxdw/Z6siRknt/F8E+cfQZfwKRcjzXGx9ceyH42CG5AXH2yNU5COX
	 usY06cf+Vai29FGsOQh55BZwHQsO5ZLsmZ4618Oc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F10FBC4CEE3
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:30:11 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 376D4380DBEE
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:30:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.186 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 27 Jun 2025 10:30:37 +0000
Message-Id: <20250627103037.release-5.15.186@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.186
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.186.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.186.xz

Linux kernel version 5.15.186 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.186.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.186.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.186.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.186/v5.15.185

