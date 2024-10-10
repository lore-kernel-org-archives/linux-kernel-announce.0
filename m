Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4406E1BE251
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Oct 2024 10:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728555345; cv=none; b=NHFEDMKL+/axKkA0dx+WHW9cERhIduwY61XkBjKh7eMq8i1mD9/gkO067fT60sD1F2xreBJrvo6hQ68HOaY6OifM1ZcrfK1MDUq9JtSKLqBFE5naCLfIFKn8bkwIEn4XoOJECjHlwNxj0R+Lcc1dIBwcBx4MA29OLqN6/l/YUek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728555345; c=relaxed/simple;
	bh=pEym/8nILFsjhrmIIJQiwNu+30b6F6FRib1pPa/wJbI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=SCiIdVDQHsORcUbXbHWMeVE63YYkuFVH+PkA5SX9kufMhav+miiosEdaXGZeW24qfah+Q8NEiof5kfvq/06KEivdsfFdBDGikEGz5VrktxeYpov1lreQVD08m6tHQKbjWajtgIsBvkohR1poVgLt1tjsSKTAbkXyioKwPSBqVLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1728555345;
	bh=pEym/8nILFsjhrmIIJQiwNu+30b6F6FRib1pPa/wJbI=;
	h=Subject:From:To:Date:From;
	b=KlPHawYQrNfSYSe0X+k6hBwry/BQI3T19tHpOxRuDW8+B7r2tEHcKFj8Cir4xHz4A
	 4Bexv9jnzbr3jYDHxm5iat8iPQyAK0nulxMbw88NoHOQy9InTI25e7Jm9hDP8uzN/p
	 1kjHdgcx9t57FU/gDgD/EOTOYD0FicquiO3Qdhvg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2294C4CEC5
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Oct 2024 10:15:44 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 393C53803263
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Oct 2024 10:15:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10.14 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 10 Oct 2024 10:15:48 +0000
Message-Id: <20241010101548.release-6.10.14@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10.14
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.14.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.14.xz

Linux kernel version 6.10.14 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.14.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.14.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.14.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.10.14/v6.10.13

