Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3291D89F5
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731854436; cv=none; b=XJ/TBtqB79euGo6JNjNRSZLUlHzAhUH1Al9Wn1kizRhWdIR7rRJKYcNGlbXILp8UuXAl1kqLygx5ww24wWXUh0DQHxZUcmvPYybEz7Ex9K46lWmCzlPU3DV8vmHyQn4JdUoGpr9vB6gOwbCwuKb37ITGDBCgafg/H5/SgD7h3wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731854436; c=relaxed/simple;
	bh=L9e+fxiHS2R/lNus/ogh04rCHC4npDicV1cl9vPRPLY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ur1hGByFZ5EwipeKWkmQzN5xsNZeM6IzBn0/gaC4R+Lpvx9DXJptQrdlfyEePHRJkUgoDdMwYY3kkMH5Obq0k7k6iRh1Bn1bApXr1/SohpLTbnbl9hDE3Y6Q/RHCqSoLuY+T0foELUu4MNcWU5L10oUwkA3X0v37Zm2axurRGs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1731854436;
	bh=L9e+fxiHS2R/lNus/ogh04rCHC4npDicV1cl9vPRPLY=;
	h=Subject:From:To:Date:From;
	b=gITF4uuBhfRsPnJGtBjL6pgzKDiqaxIUN8SKpv76rpYyMrBH1r+htDXcBSD4wYUw4
	 Nk1XeldhTewGSVwSp5GhBI1uSfDFBAPgMptk8Qj9f2od5GyQ9TP7aqdZBSQjLEJ9Xn
	 OSo2qppThCjHu2DIf3DNfCbhhx4Wm/KDTAFIhnt8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7F68C4CECD
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:40:36 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F0E573809A80
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:40:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.11.9 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 17 Nov 2024 14:40:47 +0000
Message-Id: <20241117144047.release-6.11.9@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.11.9
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.9.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.9.xz

Linux kernel version 6.11.9 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.9.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.9.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.9.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.11.9/v6.11.8

