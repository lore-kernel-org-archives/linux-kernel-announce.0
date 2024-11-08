Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83B1208C4
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Nov 2024 15:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731080449; cv=none; b=RmHei4QSuFekvyr+p1NNVOWWM2v1p9HPDs6C3mroSkaas1VoPiOJ2MV3xHI1yKqfCB1KSBJ0OFl0zHcUr1FzM0aDBeSye/TkeDeP9Q7pSv3ZR33Yk0Hwr4Bp718tzF6BAMPiWQpwODJTAFjFfdFd7iFsnSXTu6xwXN87Kzorfc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731080449; c=relaxed/simple;
	bh=7yoNDxZHfQ9sRrZ8F9iM6se2ISg6TnmVhkfMrnmXzSM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=i8tFPW0somFavgX2BMXRpFeZmG496VP2m6kv73eJF5ULQKQi0XTZuQJsdWUBMEP8/b44f1bd/Io5otDXV847MyM+3TGcem2ysQVAih92LnWSDPahBiTDNjhJXGWtMSm1J8PYivBmAwe2dlg7koEFQLAJhDh+FnsSqnf7OLjZUvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1731080449;
	bh=7yoNDxZHfQ9sRrZ8F9iM6se2ISg6TnmVhkfMrnmXzSM=;
	h=Subject:From:To:Date:From;
	b=DvRQKmT1xnccCPHGSA29ppZOpMHIqx9VLeAlFRW9A99GG84AwLN47vRy23V6sV3S3
	 cwMXpCwGg1yIw5nEXU0lsBWm2HuJUPFJSaxDNWp2CekCn79QUf58wHnzV6AtKvXaLi
	 Xi+fInGTECZy9dVGXQPFVbsmacGSss4/gnQwYoIg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B9FFC4CECF
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Nov 2024 15:40:49 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F105D3809A80
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Nov 2024 15:40:59 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.323 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 08 Nov 2024 15:40:58 +0000
Message-Id: <20241108154058.release-4.19.323@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.323
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.323.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.323.xz

Linux kernel version 4.19.323 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.323.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.323.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.323.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.323/v4.19.322

