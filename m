Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147361EF395
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749043214; cv=none; b=n6zbD3T+WsK2x8LwRqKbAGAey7g9dgyUEjUDZqCQ3YehkPVwrQ5ZR4+FXf+X8eot0HEZFaNZNBIqdx2CUNf3km04o+/xYa7TjmsdJsIK6Jvbf87WftTg7oNnN9gVNo8HYczOtGYEkWnK1RXnAWXMFl0UuarB+ivXLUCJFR5w7Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749043214; c=relaxed/simple;
	bh=ov1GNg8eTLjmBIPL9YeRsJLFkzu7h5eTbC8opQHm4pw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=a6M4Adaz4RFS1fhNlKZUlHO+6c9BsrXQbKNeoTan0lUEz/uDpRb/vC9YWejM6UpT1/0nzx/mgAHJK0xApdt79NtAyj5T3L6PrdGGGM9x8AMSo4n9ocjzy0OXsk3blHib+gqDrRKtWVau244F6di+QarDSDHVXbvXPaVynmGg2hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1749043214;
	bh=ov1GNg8eTLjmBIPL9YeRsJLFkzu7h5eTbC8opQHm4pw=;
	h=Subject:From:To:Date:From;
	b=K5g4d8Wg+f5+HaV1yDWQb5VCsI+fvgL243SrIJBRQomkPuk8e2h/xeH2lQs8sSBq8
	 mrkVMYEfdpgQCwiRxliDVPmleptjkQDO97j879WS/wXttSkqY0FAoPRN3zF049nLvN
	 fBuTn9t27uz+4sM8iD0T8n9Dd6B9V44IZAuLT2FA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99753C4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:20:13 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE8D238111E5
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:20:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.32 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Jun 2025 13:20:45 +0000
Message-Id: <20250604132045.release-6.12.32@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.32
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.32.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.32.xz

Linux kernel version 6.12.32 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.32.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.32.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.32.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.32/v6.12.31

