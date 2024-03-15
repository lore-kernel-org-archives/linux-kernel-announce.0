Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CEB8BEC
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710530742; cv=none; b=YtExNrVT8hfWALQH/kobp2Wezyu535/sLX6o+FQSv13swtwAU1InZOuX049b7tqYQtKPmMi+58tUbQKDWX0cOTybbQUjvWvgPEO94RVG7iFUrafAUphz3P9oB1RDXNjhVfSXhOOaqoIgR/VucvDPeAl6eULZDG9bfyqkJikxw/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710530742; c=relaxed/simple;
	bh=NzS1O/ggW7UiolYvNitQ3aoaxhuMv7Te+YOXQBGplQw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=qWnRKLwx5NpaO58Ho+Af56PbbA9O0MEutQXcy6uS0cWhgFsmL+3Xjda0SpU5htipfz43P40tScAmMkEt2retVXBuxhjOa43dOkw7+4BCtg8siGMxirWqhefZ+8PZaf+hxpHocAc7W+SlhmNbg5re5sZZqFclgaOERYed3sbTcDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1710530742;
	bh=NzS1O/ggW7UiolYvNitQ3aoaxhuMv7Te+YOXQBGplQw=;
	h=Subject:From:To:Date:From;
	b=LOKiKniN6cuHkgBZbyDFyrCKSXNxHfQhX0CDBv9BoQX2LF7am7x0rv6apR8D/RQHB
	 Q3auBqopDdATv5g8d1DuaARYsWNXYegNnJe7bCjJB70W1olR8Hl8MpiYsNxsk+Jp06
	 rR/OR95KzfQ18gduNH541rUB5qB8ZBT6z18tY4MQ=
Received: by smtp.kernel.org (Postfix) with ESMTPS id B54A5C433C7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:25:41 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id A608CD95053
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:25:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.82 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 15 Mar 2024 19:25:41 +0000
Message-Id: <20240315192541.release-6.1.82@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.82
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.82.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.82.xz

Linux kernel version 6.1.82 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.82.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.82.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.82.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.82/v6.1.81

