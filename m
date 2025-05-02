Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283D24C6C
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 06:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746166498; cv=none; b=aWUzQJajdk6/ZfA93FjasmOxLkwwFfkUIbuj3y9NreyGdLuXsLBnw0KN8pMbNh58ayWt2oLlD2hgv9XMrgQyFKRWOeu8f3Vxu/LKkTMWuuqAp0CJR3RhX2SFpw25Qq6QPFp5VSO5oCZmGpAq59BZUoO8OO5gWl6Z61Gtfedvc3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746166498; c=relaxed/simple;
	bh=qZJODeU5fo5Rd00HiQUSggeURla5R8UZO3QjEpwl1EE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hQydHGwSQG0vBVXJDjVS7QVUa07mPKuLXVquTD6/+/k5S5UggwAcMnK1ZZ7UIBob/1C1K0xaBxfdKz08SLybfY0xKK41THeXHutc9tZKxmfvox0ONCxYdSbDkszOc+ehr82f6QdyTZfY3CSdssBgtjoNXQxc33JlQQfsnDrMMKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1746166498;
	bh=qZJODeU5fo5Rd00HiQUSggeURla5R8UZO3QjEpwl1EE=;
	h=Subject:From:To:Date:From;
	b=l5p8lqHyvepAV1K9Ypnbwpu6DKXYze30RiTqFGD4jg87FJZfdGq2W/o3alJYcyyP2
	 DE7Acc/pUMf5rZ1oIJtwWoqCBqhqWJJkrRx0/3JJX1DqY6Mx9hy7rQkzj0N3y20Wte
	 ClEv6K/hKMPyVw5GwNayyo31se1TwjoXoAGLjNRg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC1B2C4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 06:14:57 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE7AA3822D61
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 06:15:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.89 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 02 May 2025 06:15:36 +0000
Message-Id: <20250502061536.release-6.6.89@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.89
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.89.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.89.xz

Linux kernel version 6.6.89 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.89.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.89.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.89.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.89/v6.6.88

