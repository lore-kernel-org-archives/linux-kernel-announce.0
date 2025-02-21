Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE9520F065
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Feb 2025 13:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740143708; cv=none; b=M74nf45aiOsDnxuZ3x9GfsWG5cPUGaFPklVv/LuexVpMJiR6Ph2NpQ4ojlZcsK3JEiJ0SwY0TqNRUAxEwvx3oUkBRhqlWKvgkDn9T5d/MRx2vnrZn4/ql/KP4jD9zSKvlNToycTuTefABZJcLp06J47yUsZ+8wJfFZb+iQyUGE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740143708; c=relaxed/simple;
	bh=D/zg8qr6Qhl1k8CcpJeaLmI3RXgsW4fpCv99NBKw794=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=elRn//TjAOwXlsoev2IxX9LmhF/MENBfUcmNrIqRK162Chi2pHuUbyqEAoAQU5UefX5I1tghBJJq3EwsrJlOYd03Vsfq8Q6SNR9MDWWNVWOmi+Qrzut19kvkngM0pZtGmFF2qAge3kAkmG/LYLzs6uo/SPGmn5s8eUXU3C4hC5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1740143708;
	bh=D/zg8qr6Qhl1k8CcpJeaLmI3RXgsW4fpCv99NBKw794=;
	h=Subject:From:To:Date:From;
	b=Vx6eh10sTRVvFuP76b2meLlwH6Y5kItcjTykLi6MsB1ad2BLIwzAIjb+wgmocESOJ
	 TjYSj/ZJ/nZLw1cu1yKX0YHdvpimHxIW46+yAKufSuqh/buVkID8rNNRMbuTOsxMj8
	 70B21FpJW8YQ03GaLQYoSjQsprsN+5AI8ZqvxHvc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 304C4C4CED6
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Feb 2025 13:15:08 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3A3D83804CAF
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Feb 2025 13:15:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.79 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 21 Feb 2025 13:15:38 +0000
Message-Id: <20250221131538.release-6.6.79@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.79
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.79.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.79.xz

Linux kernel version 6.6.79 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.79.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.79.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.79.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.79/v6.6.78

