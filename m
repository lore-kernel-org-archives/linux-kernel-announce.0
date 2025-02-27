Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A919921ABBE
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Feb 2025 13:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740661214; cv=none; b=TLgtXp8rNvDmzGsvcKY1ki329yb3QZ/UKhw0Bf4sQSuIKK79vMaqMT8FdjdUEaATW5lcRWuz0J684UFiYOjaW/ki1ZjXDiVh5hY1mKyhnDNgRj/77zbfxHtMIHvh39FN+NMlE7+SI5cXsXkJeL6IkH9E2hHuxkTicMELe6uwV0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740661214; c=relaxed/simple;
	bh=x5Kgq9iA0TxNDE0nCy3F0LCNMnoyWj/MkQUtBBBwbyE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Ny/GVQJAJ6b/l5AZ7So6t3X7MyIgTO8F6rOjVj31JjbD2TWLZUqvK4B5Etcf6ioLc+ih8WKsIB/ndwM12mnWc9WUGxC1mlS/thfzdJFzJI25w3w9gKBSAsReDOO0YV8IHI2gS6Twkp6RJnxnGGY2hjAT8QgmolapiSWAud/pKtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1740661214;
	bh=x5Kgq9iA0TxNDE0nCy3F0LCNMnoyWj/MkQUtBBBwbyE=;
	h=Subject:From:To:Date:From;
	b=B03OAl98UlcBqmFw2cjOJ9jZAie5cs0GcYvxJWDU1u7xm8uqM6Um/m6jGHnXZUMBv
	 L/LgdbO6JQs0ncMZ8aZe3l/M1CSI8Yckq1VzkfON7bnpBTkt99sdReAdZ99G9hRVmS
	 cOUCeE4LgGgpvpdQAf2WPqpReBQkR/h1F2n7ziUA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F5A5C4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Feb 2025 13:00:14 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7BC01380AA7F
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Feb 2025 13:00:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.13.5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 27 Feb 2025 13:00:45 +0000
Message-Id: <20250227130045.release-6.13.5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.13.5
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.5.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.5.xz

Linux kernel version 6.13.5 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.5.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.5.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.5.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.13.5/v6.13.4

