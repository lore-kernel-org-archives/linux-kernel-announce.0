Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD81847C
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 Nov 2024 12:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731588332; cv=none; b=nUXLGfhHZ/10UkjrEnXapqlQ4YPOaJqYKG3uIxzY0OIsy+GMYVXprwYCU5F2vlMeesS6z+elPkb+SzTKXHhWpHOwrw7oyIq97Esh1YcEwDeDiIeGjOJs/I89cT8g4bv6dbHQlbihXyAsIIC3L2LVA1NW8ge5X9ntLUAxZbQHKv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731588332; c=relaxed/simple;
	bh=iDbHrkXIlHZNBGjUJlmujE4SzxZCE6CtJMJ5JDjUZCg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=jyXh285R715yGFhZF/iaKbXRrJKZ1iQWukKs8WJgyn0+AP6Z9nSMY2LQ6fr/Eu713WCqo23f2KBXEeULLXlvT38ry29Q7L7jBtkhu5w8QthwXS/NSvIMffJ8Pqdlteg8pGSKtMJKBp5gwjpUR9XmooBTcbsJOw+Xtg2sDFIYLt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1731588332;
	bh=iDbHrkXIlHZNBGjUJlmujE4SzxZCE6CtJMJ5JDjUZCg=;
	h=Subject:From:To:Date:From;
	b=oQtNCinnleXCMsraqgqxfeamSG0XXX5MYWvPF3LzXui5pD4vcgsxUqpeb9j32PT19
	 sDHTb+IEvD49I9J1c9FIm5jFYteQKOmgtQdeyEuPLpt5yUVa7IJqTGU6IhYV+Z3dPq
	 aboXYTqh4YfyIQO/LCgv7zq2IwS7hx9ard6MB860=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4307FC4CECD
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 Nov 2024 12:45:32 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE8423809A80
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 Nov 2024 12:45:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.11.8 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 14 Nov 2024 12:45:42 +0000
Message-Id: <20241114124542.release-6.11.8@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.11.8
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.8.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.8.xz

Linux kernel version 6.11.8 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.8.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.8.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.8.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.11.8/v6.11.7

