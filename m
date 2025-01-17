Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266521FF7AD
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 Jan 2025 12:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737118521; cv=none; b=RLZz65SqxRgsFv4TTYvwWOWlaoeOb7Gv/4tkv+B9adpo+PRZFtDVx++GMy40bLK8uUemDdHvZ98Rd5sS3hMcBUk+2FR4lHJVkeVvz8oHCNE1a6xqz/0vslNJif1eBIwWMIWGoCSF/yvJ2WocHZyq5w2NZcZGj3gq0jiGFf5MnuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737118521; c=relaxed/simple;
	bh=gEvkfrv4didAlS4xh7KeZF1xC2/5JoBpC8W97TLMaZ8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ipkdE42ZBthVwM4SVkf8Zc3Zqedg9TTXqvogd4BtuDucHHQj0S6aQLnLy1hgW9Og0jP2qnKNukP02gAQwt9rSRIrzoYz8hez8RpOrkDmE6+sEHSg9LkYZUrIXdacfYI9vuVhW9C9BSDnHM2AKEU3CoZ1QIzayrf16dLCyc6KB9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1737118521;
	bh=gEvkfrv4didAlS4xh7KeZF1xC2/5JoBpC8W97TLMaZ8=;
	h=Subject:From:To:Date:From;
	b=b/VlkWo0q8mOOKuPbSMXqYgD60GuVuS9sXCXV2/GsKwiCgmHjOMfyf6I4XrkX0PLC
	 /PdzeCZqYDt59zS03W+BDL3YJ3UY3a7E24cykemC3+KXTXNDBK3+Zm7/X6F+kQxs7G
	 BjzdhnxaWOznjJk/1qq+FI69KHJy9fj5SqKTR3GY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B20E0C4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 Jan 2025 12:55:20 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 33AFA380AA69
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 Jan 2025 12:55:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.125 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 17 Jan 2025 12:55:43 +0000
Message-Id: <20250117125543.release-6.1.125@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.125
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.125.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.125.xz

Linux kernel version 6.1.125 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.125.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.125.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.125.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.125/v6.1.124

